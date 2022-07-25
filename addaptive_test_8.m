clear all;
close all;
clc;

filename='07 - A Hero Comes Home.mp3'
[y,Fs] = audioread(filename);



randn('seed',sum(clock*5));
n=randn(size(y));
n(:,2)=0;
n=n*0.02*(max(y(:,1))-min(y(:,1)));

y_n=(n(:,1)+y(:,1))';
y_x=y(:,1)';





Y_x=abs(fft(y_x));
Y_x=Y_x(1:length(Y_x)/2);
f=0:1/length(Y_x):1-1/length(Y_x);


N=abs(fft(n));
N=N(1:length(N)/2);

%Y_x=Y_x.^0.01;
%N=N.^0.1;
plot(f,N);
figure
plot(f,Y_x);
