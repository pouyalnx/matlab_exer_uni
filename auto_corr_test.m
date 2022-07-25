clc;clear all,close all;
Fs=1000;
t=0:0.01:0.1*Fs-0.01;
x=sin(2*pi*t*500/Fs)+sin(2*pi*t*100/Fs)+sin(2*pi*t*300/Fs)+log(t+1)+10; %change this func amplitude to watching effect of snr in signal
figure
plot(t,x);
title('data without noise');


x2=x+randn(1,length(x))*10;
figure
plot(t,x2);
title('data with noise');


figure;
autocorr(x);
title('data without noise acf');


figure;
autocorr(x2);
title('data with noise acf');

x3=x+randn(1,length(x))*2;
figure
plot(t,x3);
title('data with noise');


figure;
autocorr(x3,20);
title('data with noise acf');

figure;
crosscorr(x2,x);
title('data with noise ccf');

figure;
m=xcov(x,x2);
plot(m);
title('data with noise xcf');
