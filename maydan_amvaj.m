clc
clear all
close all


f=100;
c=3e8;
landa=c/f;
h=1;
b=2*pi/landa;

dtata=1;
teta=0:dtata:2*pi;

f=(cos(b*h*cos(teta))-cos(teta))./sin(teta);
polar_data=f.*exp(1i*teta);

polar(real(polar_data),imag(polar_data));
