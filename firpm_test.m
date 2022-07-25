clc;clear all;close all;

fs=16000
f=[0.19 0.3 0.5 0.7 0.9 1];
a=[1 0 1 0];
dev=[0.001 0.001 0.001 0.001]


[n,fo,ao,w]=firpmord(f,a,dev);
n=n+1;
h=firpm(n,fo,ao,w);




figure
H=(fft(h,4096));
H=H(1:floor(end/2));
i=0:2/4096:2-2/4096;
i=i(1:floor(end/2));
plot(i,phase(H),i,angle(H));
figure
plot(i,abs(H));