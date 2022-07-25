clc
clear all
close all

Fs=9;
fc=3;

r=0.9;
teta=2*pi*fc/Fs;


zero=[exp(i*teta),exp(-i*teta)];
pole=r*zero;

b=poly(zero);
a=poly(pole);

freq_fft(b,a);

