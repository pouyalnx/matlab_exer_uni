clc
clear all
close all

N=64;
P=71;
A=1024;
x0=12;
x=zeros(1,N);

x(1)=12;
for k=2:N
    x(k)=mod(A*x(k-1),P);
end

subplot(1,2,1);
plot(x);

subplot(1,2,2);
plot(abs(fft(x)));

