close all
clear all
clc

[x,f]=audioread('07 - A Hero Comes Home1.wav');
%sound(x,f)

L=4
N_filter=128
F=[0,1/L,1]
A=[1,1,0]
b=fir2(N_filter,F,A);

x2_pre=zeros(1,L*len(x));
x2_pre(1:L:end)=x;
x2=filter(b,1,x2_pre);

sound(x2,f*L);