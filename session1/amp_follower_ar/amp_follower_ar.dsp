import("stdfaust.lib");
//gain = hslider("gain", 0.5, 0.0, 1.0, 0.01);
gain = an.amp_follower_ar(0.02,0.02);
process = gain , os.sawtooth(440):*;