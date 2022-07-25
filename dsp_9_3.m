clc
close all
clear all

Fs=50
N=8;
Ap=0.5;
As=60;
Wp=[0.5 22]


[b,a]=ellip(N,Ap,As,2*Wp/Fs);
freq_fft(b,a);
