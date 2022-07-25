clear all
close all
clc

x=1:100
M=16
x2=x(1:M:end);
x3=zeros(1,len(x)*M);
x3(1:M:end)=x;

figure
subplot(3,1,1)
freq_fft(x,1)
subplot(3,1,2)
freq_fft(x2,1)
subplot(3,1,3)
freq_fft(x3,1)