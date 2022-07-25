close all
clear all
clc

N_filter=64
F=[0,0.1,0.2,1]
A=[0,1,0,0]
b=fir2(N_filter-1,F,A)
subplot(2,1,1)
freq_fft(b,1)


M=8
b2=zeros(1,N_filter*M)
b2(1:M:end)=b
subplot(2,1,2)
freq_fft(b2,1)


figure
subplot(2,1,1)
stem(b)
subplot(2,1,2)
stem(b2)