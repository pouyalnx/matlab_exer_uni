clc
clear all
close all


rs=60;
rp=0.1;

f=[0.25 0.3 0.6 0.65];
a=[0 1 0];
dev = [10^(-rs/20) (10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)];

[n,fo,ao,w] = firpmord(f,a,dev);
b = firpm(n,fo,ao,w);


bit=16;
b_q=floor(b*2^bit)/2^bit;


h1=abs(freq_fft(b,1));
h1=h1(1:length(h1)/2);


h2=abs(freq_fft(b_q,1));
h2=h2(1:length(h2)/2);

ang=0:1/length(h1):1-1/length(h1);

plot(ang,h1,ang,h2);
