3+5
"hello world".postln
s.boot
{SinOsc.ar(500, 0, 0.3, 0)}.play
(
{ var vib, freq, amp;
	amp={SinOsc.kr(0.5, 0, 0.25, 0.75)};
	freq=500;
	vib={SinOsc.kr(5, 0, 20, 0)};
	SinOsc.ar([550+vib, 575-vib], 0, amp, 0);}.scope;
)

(
{ var freq;
    freq = [[660, 880], [440, 660], 1320, 880].choose;
    SinOsc.ar(freq, 0, 0.2);
}.play;
)

{ Pan2.ar(PinkNoise.ar(0.2), SinOsc.kr(0.5)) }.play;
{ Pan2.ar(PinkNoise.ar(0.2), -0.5) }.play;

{ PinkNoise.ar(0.2) + SinOsc.ar(440, 0, 0.2) + Saw.ar(660, 0.2) }.scope;

(
    var n = 8;
    { Mix.fill(n, { SinOsc.ar(500 + 500.0.rand, 0, 1 / n) }) }.play;
)

(
    var n = 8;
    {
        Mix.fill(n, { arg index;
            var freq;
            index.postln;
            freq = 440 + index;
            freq.postln;
            SinOsc.ar(freq , 0, 1 / n)
        })
    }.play;
)
(
    var n = 30;
    { Mix.fill(n, { arg k;
	var freq=500;

	SinOsc.ar(freq*(k+1), 0, 1 / ((k+1)) )}) }.scope;//dente di sega in sintesi additiva
)

(
    var n = 30;
    { Mix.fill(n, { arg k;
	var freq=500;
	var kk=k+1;
	var amp=(1/kk)*(kk%2);//*(k%2) = selezionatore di dispari
	amp.postln;
	SinOsc.ar(freq*kk, 0, amp )}) }.scope;
)

(
    var n = 1000;
    { Mix.fill(n, { arg k;
	var freq=20;
	var kkk=(k+1);
	var kk=kkk*2;
	var amp=(1/kkk);//*(k%2) = selezionatore di dispari
	var frq=(freq/2)*(k*2+1);
	frq.postln;


	SinOsc.ar(frq, 0, amp )}) }.scope;
)

3%2
