clc
clear all
close all

f=[0  0.1 0.1 0.3 0.3 0.5 0.5 0.8 0.8 0.9 1];
a=[1  1   0   0   1   1   0   0   1   1   0];
[b,a]=yulewalk(80,f,a);
freq_fft(b,a)