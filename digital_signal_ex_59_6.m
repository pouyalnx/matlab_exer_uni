clc
clear all;close all;

a=0.1;

M=7;

b1=a.^[0:M];
a1=ones(1,M);


b2=[1,zeros(1,M-2),(a)^M]
a2=[1,a,zeros(1,M-2)];


freq_fft(b1,a1);
figure
freq_fft(b2,a2);