close all;clear all;clc;


f=[3 5];
a=[1 0];
dev=[0.01 10^(-50/20)];
fs=20;


[n,f0,a0,w]=firpmord(f,a,dev,fs)

b=firpm(n,f0,a0,w);
freq_fft(b,1);


figure

close all;clear all;clc;


f=[3.5 4.5 5.5 6.5];
a=[0 1 0];
dev=[10^(-50/20) 0.01 10^(-50/20)];
fs=20;


[n,f0,a0,w]=firpmord(f,a,dev,fs)

b=firpm(n,f0,a0,w);
freq_fft(b,1);