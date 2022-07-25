clc
clear all
close all

x=ecg(512);
plot(x)
n=randn(size(x))*max(x)*0.05;
x_n=n+x;
subplot(2,1,1)
plot(x)
subplot(2,1,2)
plot(x_n)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%short length

b=fir2(7,[0 1],[1 0]);

y1=filter(b,1,x_n);
y2=filtfilt(b,1,x_n)

figure
plot(y1)
hold
plot(y2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%longer filter
b=fir2(63,[0 1],[1 0]);

y1=filter(b,1,x_n);
y2=filtfilt(b,1,x_n)

figure
plot(y1)
hold
plot(y2);

