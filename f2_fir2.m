close all
clear all
clc

N_fft=4096

f=[0,0.2,0.4,0.6,0.8,1]
a=[1,0,1,0,1,0]
n_filter=32

b=fir2(n_filter,f,a);
freq_fft(b,1)

