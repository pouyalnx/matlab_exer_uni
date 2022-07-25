close all
clear all
clc

N=64
Ts=1     % f sampling
f=0.25   
A=1
n=[0:N-1];
x=cos(2*pi*n*f);
X=fft(x);
magX=abs(X);
f_n=[0:1/N:1-1/N];
spec=20*log10(magX);
stem(f_n,magX)
figure
plot(f_n,spec)
[maxMag,maxloc]=max(magX)
[maxMag2,maxloc2]=max(magX[maxloc+1:end])