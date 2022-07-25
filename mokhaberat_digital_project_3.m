close all
clear all
clc

fc=50;
Fs=1000;
T=0.1;
Ts=1/Fs;
t=0:Ts:T-Ts;


x1=0.5*sin(2*pi*fc*t)+0.25*sin(2*pi*2*fc*t)+2*sin(2*pi*4*fc*t);
x2=0.5*sin(2*pi*fc/2*t)+0.25*sin(2*pi*fc/3*t)+2*sin(2*pi*fc/4*t);

%for H=1/(1-jf/fc)
h=2*pi*fc*exp(-2*pi*fc*t);
h=h/max(h);


y1=conv(h,x1);
y2=conv(h,x2);

plot(t,x1,t,x2);
figure
plot(t,y1(1:length(t)),t,y2(1:length(t)));

