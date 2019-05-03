#!/usr/bin/env python3
import wave
from struct import pack
from math import sin, pi

RATE=44100

## GENERATE MONO FILE ##
wv = wave.open('mg.wav', 'w')
wv.setparams((1, 2, RATE, 0, 'NONE', 'not compressed'))
maxVol=2**15-1.0 #maximum amplitude
wvData=b""
for i in range(0, RATE*3):
   wvData+=pack('h', round(maxVol*sin(i*2*pi*18000.0/RATE)))
wv.writeframes(wvData)
wv.close()

import os
os.system("aplay mg.wav")
