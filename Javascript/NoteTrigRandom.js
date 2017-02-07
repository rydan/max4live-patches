//Inputs: Note, VelIn, DesiredVelocityMin, DesiredVelocityMax
inlets = 4;

//Outputs: Note, Vel
outlets = 2;

var noteVelocity = 0;
var velocityMin = 1;
var velocityMax = 127;

function sendNote(note, val) {
	outlet(1, val); 
	outlet(0, note);
}

function shouldSend() {
   var random = Math.floor((Math.random() * 127) + 1);
   return random <= noteVelocity;
}

function randomizeVelocity(minimum, maximum) {
   var diff = Math.abs(maximum - minimum);
   return Math.floor(Math.random() * diff + minimum);
}

function msg_int(val) {
	if (inlet == 0) {
    	if (noteVelocity < 1) {
           //Note off, just send
           sendNote(val, 0);
		} else {
			if (shouldSend()) {
				sendNote(val, randomizeVelocity(velocityMin, velocityMax));
			}
		}
	}
	if (inlet == 1) {
		noteVelocity = val;
	}
	if (inlet == 2) {
       velocityMin = val;
   }
   if (inlet == 3) {
       velocityMax = val;
   }

}

