close all
clear all
clc

[x,f]=audioread('07 - A Hero Comes Home1.wav');
%sound(x,f)

M=32
N_filter=128
F=[0,1/M,1]
A=[1,1,0]
b=fir2(N_filter,F,A);
x2_pre=filter(b,1,x);
x2=x2_pre(1:M:end);


sound(x2,f/M);