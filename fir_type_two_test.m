close all;clear all;clc;

f=[0,0.25,0.5];
H=[1 0.5 0.1];


b=fir_type_two(f,H);
fir_freq_fft(b);