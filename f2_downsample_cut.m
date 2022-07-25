clear all
close all
clc

FS=1000


f_sin1=0.1
f_sin2=0.8
f_sin3=0.9

TS=f_sin1/FS


t=0:TS:256*TS


x=sin(2*pi*f_sin1*FS*t)+sin(2*pi*f_sin2*FS*t)+sin(2*pi*f_sin3*FS*t);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
freq_fft(x,1)
M=4
x2=x(1:M:end)
figure
freq_fft(x2,1)

