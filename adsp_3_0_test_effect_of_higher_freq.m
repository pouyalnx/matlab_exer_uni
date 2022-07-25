clear all
close all
clc

N_fft=4096

M=3
1/M

n_signal=1024
f=[0,0.05,0.1,0.2,0.3,1];
a=[1,1,0,1,0,0];
h=fir2(n_signal,f,a);
freq_fft2(h(1:M:end),1);

figure

f_in=[0,0.15,1]
a_in=[1,0,0]
h_f=fir2(128,f_in,a_in);
h2=filter(h_f,1,h);
freq_fft2(h2(1:M:end),1);


