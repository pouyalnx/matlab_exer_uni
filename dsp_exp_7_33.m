clc;
clear all;
close all;

Fs=1;
fc=0.3;

a=1-2*pi*fc/Fs;


b=[1 1]*(1-a)/2;  % an zero in Fs/2
a=[1 -a];

freq_fft(b,a);