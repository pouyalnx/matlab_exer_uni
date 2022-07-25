clc
clear all
close all

N_fft=8192;
N_signal=10;
Ts=N_signal/N_fft;
t=0:1/N_fft:1-1/N_fft;
%2*Tb*cos(pi*f*Tb) |f|<0.5*Tb

X=[cos(pi*(1:N_signal)*0.5/N_signal),zeros(1,N_fft-2*N_signal),cos(pi*(N_signal:-1:1)*0.5/N_signal)];
plot(X);
x=ifft(X);
figure
plot(x);
figure
plot(t,abs(x))
