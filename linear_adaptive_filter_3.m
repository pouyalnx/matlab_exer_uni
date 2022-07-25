clc
clear all
close all



filename='03 Be Silent1.wav'
y = audioread(filename);

filename='03 Be Silent1_noise.wav'
[d,Fs] = audioread(filename);

l=floor(length(y)/8);

n  = 64; 
l=floor(l/n)*n;



y=y(1:l,1);
d=d(1:l,1);

d=d';
y_x=y';
x=d;

cut=0.7;
f=[0  cut  cut+0.002   1];
m=[1  1    0      0];
N=128;

b=fir2(N,f,m);
a=[1,zeros(1,length(b)-1)];
d=filter(b,a,d);

D=16;
x=x(D:end);
x(end:end+D-1)=0;





mu = 0.001;              % Step size
ha = adaptfilt.blmsfft(256,mu,1,n);
[y,e] = filter(ha,x,d);


sound(y,Fs)
