clear all
close all
clc 
x=ones(1,8)


stem(abs(fft(x)))

N=4
figure
stem(abs(fft([x,zeros(1,N)])))


N=8
figure
stem(abs(fft([x,zeros(1,N)])))

N=16
figure
stem(abs(fft([x,zeros(1,N)])))

N=2048
figure
plot(abs(fft([x,zeros(1,N)])))