# IM 2 - Lezione del 6 febbraio 2019

## Argomenti

* Strumentario e concetti di *strumento musicale*:
    * `SuperCollider` - introduzione:
      * *SynthDefs*
      * *busses*

## Codice `SuperCollider`

[introduzione ai `SynthDef`s](./lez2.scd)


```SuperCollider
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

```

[i *busses* in `SuperCollider`](./SClezBusses.scd)

```SuperCollider
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

```
