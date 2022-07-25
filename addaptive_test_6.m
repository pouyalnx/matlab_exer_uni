clear all;
close all;
clc;

filename='07 - A Hero Comes Home.mp3'
[y,Fs] = audioread(filename);


randn('seed',sum(clock*200));
n=randn(size(y));
n(:,2)=0;
n=n*0.02*(max(y(:,1))-min(y(:,1)));

y_n=(n(:,1)+y(:,1))';
y_x=y(:,1)';


f=[0 0.04 0.05 0.06 0.25 1];
m=[1 1    0.7  0.5  0.01 0];
n=511;
b=fir2(n,f,m);
a=[1,zeros(1,length(b)-1)];

y_n=filter(b,a,y_n);
Y_n=fft(y_n);
Y_n=(Y_n.^1.18)/4;
y_n=real(ifft(Y_n));


y_n=filter(b,a,y_n);
Y_n=fft(y_n);
Y_n=(Y_n.^1.1)/2;
y_n=real(ifft(Y_n));
y_n(2:end)=y_n(2:end)-y_n(1:end-1);
y_n=y_n*8;

sound(y_n,Fs);

