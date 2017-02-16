import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class NoteTrigRandom extends MaxObject {

    private int noteVelocity = 0;
    private int randomVelMin = 0;
    private int ranfomVelMax = 127;

    public NoteTrigRandom() {
        //Inputs: note, velocity, randomVelMin, randomVelMax
        this.declareInlets(new int[]{DataTypes.INT, DataTypes.INT, DataTypes.INT, DataTypes.INT});
        setInletAssist(new String[]{"Note (hot)", "Velocity", "RandomVelMin", "RandomVelMax"});
        this.declareOutlets(new int[]{DataTypes.INT, DataTypes.INT});
        setOutletAssist(new String[]{"Note", "Velocity"});
        createInfoOutlet(false);
    }

    @Override
    protected void inlet(int value) {
        int inlet = getInlet();
        switch (inlet) {
            case 0:
                if (noteVelocity < 1) {
                    //Note off, just send
                    sendNote(value, 0);
                } else {
                    if (shouldSend()) {
                        sendNote(value, randomizeVelocity());
                    }
                }
                break;
            case 1:
                noteVelocity = value;
                break;
            case 2:
                randomVelMin = value;
                break;
            case 3:
                ranfomVelMax = value;
                break;
        }
    }

    private int randomizeVelocity() {
        int diff = Math.abs(ranfomVelMax - randomVelMin);
        return (int)Math.floor(Math.random() * diff + randomVelMin);
    }

    private boolean shouldSend() {
        double rand = Math.floor((Math.random() * 127) + 1);
        return rand <= noteVelocity;
    }

    private void sendNote(int note, int velocity) {
        outlet(1, velocity);
        outlet(0, note);
    }
}