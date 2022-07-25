clc
clear all
close all



Fs=1;

[b,a]=butter(4,Fs/8);
freq_fft(b,a);


figure
[b,a]=butter(4,Fs/8,'high');
freq_fft(b,a);


figure
[b,a]=butter(4,Fs/8*[2 3]);
freq_fft(b,a);

figure
[b,a]=butter(4,Fs/8*[2 3],'stop');
freq_fft(b,a);