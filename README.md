Welcome to the M4L area. Here you will find my M4L-patches. They come with absolutely no warranty. You are free to use them, even in commercial productions, but you are not allowed to redistribute or sell them, or take them as starting point for other Max/M4L patches you intend to distribute or sell. (At least not without checking with me first). If you like them and use them a lot, you are also free to send me an email and tell me, send me a copy of the music and/or send me a donation via PayPal. ;o)

**Rydans CV suite**
Located in the CV folder of the git repository.
First out is the (ever growing) collection of Control Voltage plugins. Have synths/fx that accept CV in? Have an audio interface that can output DC? You’ve come to the right place! These are my small patches for generating different kinds of CV straight out of live. I have created them mainly because I need them when working with my eurorack modular. The current lineup is:

*SimpleMidiCtrlCV* 
A simple plugin with a knob for just sending a DC level out. It’s slightly more useful due to the fact that it is controllable by mod wheel (or any midi CC for that matter). Also, it can be used with live automation to, pretty much, create and CV shape or form you can think of. It also has a slew knob, to round of the edges…

*TrigGenerator* 
Sends a short pulse out for each received midi note. Useful for clocking sequencers and stuff.

*VelocityProbabilityTrigGenerator*
Like trig generator, but velocity decides the probability for whether a trig is generated for that step or not. Velocity 127 means trig allways, and Velocity 1 means really low probability of a trig being sent.

*STG-CV AD* 
A simple A-D envelope, with adjustable shape for both A and D stage. Trigs on midi note on. Monophonic, polyphonic input (or overlap/legato) will result in strange output…

*STG-CV AR* 
A simple A-R envelope, with adjustable shape for both A and R stage. Trigs on midi note on/off. Monophonic, polyphonic input (or overlap/legato) will result in strange output…

*Cylon Modulator CV* 
A semi-clone of the Livewire Vulcan Modulator. It consists of two LFO:s, with selectable triangle/square waveform (with symmetry control). LFO2 can modulate LFO1 speed, and output is selectable between LFO1, Sum, Multiple, Max and Min. Also, selectable unipolar/bipolar operation, and an amount knob, controlled by modwheel in.

*DrunkRandomVoltages & FluctuatingRandomVoltages*
Different random voltage generator implementations (I like random!). Drunk versions are based on Brownian Motion, and the Fluctuating one are a software replica of the Fluctuating Random Voltages section of the Buchla 266.

*Quadrature*
Quadrature LFO. LFO with two outputs, where channel 2 is 90 degrees phase shifted from channel 1. Using this with a balanced audio interface (like MOTU) and insert cables, means you will get 0 and 180 degrees on the insert cable from channel 1, and 90 and 270 degrees on the cable from channel two, that is, full quadrature, using two outputs.

Note! To use these plugins, at least together with MOTU interfaces, it’s important to use a TRS cable with the ring unconnected (tip-tip, sleve-sleve, ring not connected). Failing to do so might damage your audio interface, according to motu. This is the same as when using Volta.

**Midi**
Various midi effects. Most notably, clock gividers and the PitchFunctionGenerator sequencer

*ES-4 ClockDivider*
Clock divider intended for use with the ExpertSleepers Gate expander module for ES-4 (And ES-3, and ES-40)
Midi note C1 is clock, and it will be output as C1 - G1, which is just what the gate expansion wants. If division is set to zero, that divider is disabled, and no gates (notes) will be generated. Gate length will be the same as the C1 used as clock input. Note C2 will act as reset (same as pressing the reset button)
There's a button to instead change the divider to toggle mode. In toggle, after the desired number of pulses, the gate will turn on, and stay on until the desired number of pulses has passed again.

*ES-4 RndClockDivider*
Clock divider intended for use with the ExpertSleepers Gate expander module for ES-4 (And ES-3, and ES-40)
Midi note C1 is clock, and it will be output as C1 - G1, which is just what the gate expansion wants. If division is set to zero, that divider is disabled, and no gates (notes) will be generated. Gate length will be the same as the C1 used as clock input. Note C2 will act as reset (same as pressing the reset button)
There's a button to instead change the divider to random mode. In random mode, the Count knob will instead set the probability (in percent) for a gate being generated for a clock input.

*MidiClockDivider*
A more generic version of the ES-4 RndClockDivider. Each divider has the possibility to set not to trigger, and count (division). Like the  ES-4 RndClockDivider, each divider can be set to Count or Random modes.

*PitchFunctionGenerator*
The PitchFunctionGenerator is an eight "stage" sequencer. Each stage is like a step on a normal sequencer, that is, it will add/subtract an offset to the sent note number. However after playing it's note, it will navigate to a new stage, based on probability. For each stage, it's possible to set three potential steps to go to, combined with a "weight" to go there. The weight works like the weights in lives "Follow Actions". If two stages has the same weigth, it will navigate to each of them roughly half the time. If stage1 has navigation to stage 2 with weight 3 and stage 4 with weight 1, after playing it's note it will move to stage2 roughly 3/4 of the times, and to stage 4 roughly 1/4 of the times. Does not work well with polyphonic input, or overlapping midi notes...

**Audio**
Mostly different experiment patches, often buggy and strange...

*EvenTap*
17 (yes, 17, sorry) tap stereo delay, with a spacing parameter for the taps to either make time between taps increasingly longer (giving a "slowing down" feel) or increasingly shorter (giving an "accelerating" feel)
