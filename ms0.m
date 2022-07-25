clc
clear all
close all

N=1024;
fc=10;
x=cos(2*pi*fc*(0:N)/N);
plot(x)


h=[1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0.9,0,0,0,0,0,0.8,0,0,0.4];

y=filter(h,1,x);
y1=conv(h,x);

figure()
plot(y1)