import("stdfaust.lib");
freq = hslider("[0]freq", 440, 250.0, 800.0, 0.01);
gain = hslider("[1]gain", 0.5, 0.0, 1.0, 0.01);
gate = button("[2]gate") : en.adsr(0.01, 0.01, 0.9, 0.1);
breathEnv = an.amp_follower_ar(0.02,0.02);
timbre(f) = os.sawtooth(f) * 0.5 + os.sawtooth(f*2) * 0.25 + os.sawtooth(f*3) * 0.125;
process = gain * timbre(freq) * gate * 0.5 * breathEnv <: _,_;
effect = dm.zita_light;