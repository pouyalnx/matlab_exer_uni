clear all;close all;clc

N=6;
a=[1,zeros(1,N-2),1]; %1/(1-z^-6)
b=[1,zeros(1,N-1)];

freqz(b,a)

figure
freq_fft(b,a);

Fs=1000;
f1=500;
f2=(Fs/2)*0.2;
T=0.05

t=0:1/Fs:T-1/Fs;
x=2*cos(2*pi*t*f1);%+cos(2*pi*t*f2);

y=filter(b,a,x);

figure;
plot(t,x,t,y);


T=0.05

t=0:1/Fs:T-1/Fs;
x=2*+cos(2*pi*t*f2);

y=filter(b,a,x);

figure;
plot(t,x,t,y);



f3=(Fs/2)*0.3;
T=0.05

t=0:1/Fs:T-1/Fs;
x=2*+cos(2*pi*t*f3);

y=filter(b,a,x);

figure;
plot(t,x,t,y);