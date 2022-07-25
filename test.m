clc
clear all
close all

N=256;
Fs=256;

t=0:1/Fs:1-1/Fs;
x=cos(2*pi*t*12)+cos(2*pi*t*61)+cos(2*pi*t*25);

y=fft(x);
y2=fwht(x);

subplot(2,1,1);
plot(abs(y));
subplot(2,1,2);
plot(abs(y2));


