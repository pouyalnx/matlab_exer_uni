clc;clear all;close all;

n=3;
f=[0 1];
a=[1 0];


b=firpm(n,f,a);
H=abs(fft(b,4096));
H=H(1:floor(length(H)/2));
plot(H);
