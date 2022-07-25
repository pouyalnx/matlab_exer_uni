clc
clear 
close all

[y,fs]=audioread('1.wav');



N=length(y);
dt=1/fs;
t=(0:N-1)*dt;
f=(-N/2:N/2-1)*fs/N;

Y=fftshift(fft(y));
P=abs(Y).^2/N;
subplot(2,1,1);

plot(t,y);
xlabel('time (sec)');
ylabel('y');
title('heart power');
subplot(2,1,2);
plot(f,P);
xlabel('freq (hz)');
ylabel('P');
xlim([-400,400]);
sound(y,fs)











