close all
clear all
clc

n_fft=1024

f=[0,0.1,0.2,1]
a=[0,1,0,0]
n_filter=256

b=fir2(n_filter,f,a)

M=3
b2=b(1:M:end);

freq_fft(b,1)
figure
freq_fft(b2,1)

figure
subplot(2,1,1)
plot(b)
subplot(2,1,2)
plot(b2)