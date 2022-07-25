clc
clear all
close all

N=16;
Fs=44100;
fi=Fs/3;
t=0:N-1;
x=cos(2*pi*fi/Fs*t);

figure
plot(x)
title('cos input')


figure
freq_fft(x,1)
title('freq_fft inp')

figure
[b,a]=butter(4,2*fi/Fs,'low');
freq_fft(b,a)


L=6

v=zeros(1,len(x)*L);
v(1:L:end)=x;
y=filter(b,a,x);
figure
plot(y)
title('out y')

figure
freq_fft(y,1)
title('freq_fft out')