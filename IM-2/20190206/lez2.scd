{ PinkNoise.ar(0.2) + SinOsc.ar(440, 0, 0.2) + Saw.ar(660, 0.2) }.scope;

{ PinkNoise.ar(0.2) + SinOsc.ar([440, 100], 0, 0.2) + Saw.ar(660, 0.2) }.scope;

SynthDef.new("sinsynth", {Out.ar(0, [↨SinOsc.ar(150,0,0.2), SinOsc.ar(230,0,0.2)])}).add;

x = Synth.new("sinsynth");
x.free;

SynthDef("argsynth", { arg freq = 100, out = 0; Out.ar( out, SinOsc.ar(freq, 0, 0.2))}).add;

y = Synth("argsynth");
y.free;
y = Synth("argsynth", ["freq", 150]);
y.set("freq", 200);

