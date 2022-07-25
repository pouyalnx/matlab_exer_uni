clc
clear all
close all

Fs=1000;
t0=0:1/Fs:1-1/Fs;

x=cos(2*pi*t0*32)+cos(2*pi*t0*128)+cos(2*pi*t0*400);

figure
plot(t0,x);
title('signal');
ylabel('x(t)');
xlabel('time(sec');

N=128;
n=pow2(nextpow2(N));

y1=fft(x,n);
y2=fft(x(1:500),n);

y1=y1/max(y1);
y2=y2/max(y2);

plot(abs(y2-y1));
figure
plot(abs(fftshift(y1)));