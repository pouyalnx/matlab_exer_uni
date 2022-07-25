clc
clear all
close all


T1=100;
T2=100;
Fs=10000;
k=0;
t=-0.5:1/Fs:0.5-1/Fs;
x1=sinc(t/T1-k);
x2=sinc(t/T2);

sum(x1*(x2'));
