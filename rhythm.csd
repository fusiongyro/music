<CsoundSynthesizer>
<CsOptions>
-odac -d
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1



instr 1
  itotaldur = p3
  ifreq = cpspch(p4)
  icps  = p5
  
  ;asquine, async squinewave ifreq+lfo:a(ifreq/2, 0.2), lfo:a(1, 0.1), lfo:a(1, 0.2)
  ;asig = asquine * lfo(1, icps, 5) * adsr(0.01,0.01,1,0.01)
  asig oscil lfo(1, icps, 5)*adsr(0.01,0.01,1,0.01), ifreq+lfo(ifreq/2, 0.2, 0), 2
  aout moogladder2 asig, linseg(ifreq/4, 1, ifreq, itotaldur-3, ifreq/4), 0.5
  outs1 aout
endin


</CsInstruments>
<CsScore>
f2 0 16384 10 1 0.5 0.3 0.25 0.2 0.167 0.14 0.125 .111   ; Sawtooth



i1 0 30 8.10 2

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
