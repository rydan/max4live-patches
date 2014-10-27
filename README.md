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
