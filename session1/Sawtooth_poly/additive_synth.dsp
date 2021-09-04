import("stdfaust.lib");
freq = hslider("[0]freq", 440, 250.0, 800.0, 0.01);
gain = hslider("[1]gain", 0.5, 0.0, 1.0, 0.01);
timbre(f) = os.oscsin(f) * 0.5 + os.oscsin(f*2) * 0.25 + os.oscsin(f*3) * 0.125;
process = gain * timbre(freq) ;