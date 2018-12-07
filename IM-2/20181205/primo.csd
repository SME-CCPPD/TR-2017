<CsoundSynthesizer>
<CsOptions>
-odac -d
</CsOptions>
<CsInstruments>

sr = 4410
ksmps = 32
nchnls = 1 ;number of channel
0dbfs = 1

instr 1
aout oscil ampdbfs(-3), p4, p5 ;ampiezza, f, num "tavola"
out aout
endin 




</CsInstruments>
<CsScore>
f1 0 4096 10 1 ;che cos'è (la tav 1 a cui è collegata l'osc), quando avviene, dimensione tav, tipo di tavola, 1=sinusoide (dopo armoniche)
f2 0 2048 10 1 0.5 0.33 0.25 0.2 0.125 0.0625 
i1 0 2 440 1        ;qnd inizia con "i": instanziazione di uno strum, durata
i1 2.3 0.3 523 2
</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
