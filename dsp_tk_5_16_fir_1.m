clear all;close all;clc;

Nf=12;
b=fir1(Nf-1,0.5);
a=[1,zeros(1,Nf-1)];

N=1024;

teta=(0:1/N:1-1/N)*2*pi;

delta=[1,zeros(1,N-1)];
h=filter(b,a,delta);
H=fft(h);
plot(teta,abs(H));
title('low pass');

Nf=13;
b2=fir1(Nf-1,0.5,'high');
a2=[1,zeros(1,Nf-1)];


h2=filter(b2,a2,delta);
H2=fft(h2);
figure
plot(teta,abs(H2));
title('high pass');
