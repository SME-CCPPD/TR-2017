s.reboot;

d = Bus.control(s, 2); //ch 0-1
d.index;
d.numChannels;

b = Bus.control(s, 8); //ch 2-9

c = Bus.control(s); //ch 10
c.index;

b = Bus.control(s);

SynthDef("audio", {arg bus, fo = 0;
	Out.ar(0, SinOsc.ar(In.kr(bus)+fo,mul:0.5))}
).add;
SynthDef("control", {arg freq=1, bus;
	Out.kr(bus, SinOsc.kr(freq,0,100, 250))}
	).add;

x = Synth.new("control", [\bus, b]);
y = Synth.new("audio", [\bus, b]);

x.set("freq", 3);
y.set("fo", 200);

