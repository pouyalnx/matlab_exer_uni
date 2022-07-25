clear all;clc;

a=[1,2,3];
b=[2,1];


conv(a,b)

conv(a,b(length(b):-1:1))

xcorr(a,b)