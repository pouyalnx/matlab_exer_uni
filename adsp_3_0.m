clear all
close all
clc
N_fft=64
n=5
x=ones(1,n);
om=0:pi/128:2*pi-pi/128;

M1=2
x1=x(1:M1:end)

M2=5
x2=x(1:M2:end)

subplot(3,3,1)
stem(x)

subplot(3,3,4)
plot(abs(fft(x,N_fft)))

subplot(3,3,7)
plot(sin(n*om/2)./sin(om/2))

subplot(3,3,2)
stem(x1)

subplot(3,3,5)
plot(abs(fft(x1,N_fft)))

subplot(3,3,8)
plot(sin(n*om/(2*M1))./sin(om/(2*M1)))

subplot(3,3,3)
stem(x2)

subplot(3,3,6)
plot(abs(fft(x2,N_fft)))

subplot(3,3,9)
plot(sin(n*om/(2*M2))./sin(om/(2*M2)))