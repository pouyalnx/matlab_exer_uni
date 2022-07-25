close all;clear all;clc;


b_base=[1,2];


b_m1=[b_base(1:end-1),fliplr(b_base)];
b_m2=[b_base,fliplr(b_base)];

b_m3=[b_base(1:end),0,-1*fliplr(b_base)];
b_m4=[b_base,-1*fliplr(b_base)];


fir_freq_fft(b_m1);
figure
fir_freq_fft(b_m2);

figure
fir_freq_fft(b_m3);

figure
fir_freq_fft(b_m4);