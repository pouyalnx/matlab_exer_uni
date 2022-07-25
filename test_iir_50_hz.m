close all;clear all;clc;

b=[1, -2*0.707107,1]
a=[1 -2*0.636396 0.81]

Fs=1000
T=0.1 %SEC

N=Fs*T;
ts=1/Fs;

t=0:ts:T-ts;

x=cos(2*pi*Fs/8*t);

h=filter(b,a,x);
plot(t,h,t,x);

figure

x=5*cos(2*pi*Fs/8*t)+cos(2*pi*100*t)+cos(2*pi*5*t)+cos(2*pi*10*t);

h=filter(b,a,x);
plot(t,h,t,x);

figure
noi=rand(1,N)*5+x;

h=filter(b,a,noi);
plot(t,h,t,noi);
