clc
clear all
close all

Fs=44100;

f=[963,936,693,396];
dur=10; %sec

t=0:1/Fs:dur-1/Fs;

d1=cos(2*pi*t*f(1));
d2=cos(2*pi*t*f(2));
d3=cos(2*pi*t*f(3));
d4=cos(2*pi*t*f(4));

sound(d1+2*d2+0.5*d3,Fs);