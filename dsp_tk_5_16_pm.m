clear all;close all;clc;


f=[0 0.2 0.3 0.7 0.8 1];
a=[1 0  1  1];
dev=[0.001 0.001 0.001 0.001];


[n,f0,a0,w]=firpmord(f,a,dev);
b=firpm(n,f0,a0,w);

freq_fft(b,1);
