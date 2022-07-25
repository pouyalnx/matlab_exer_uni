clc
clear all
close all

wp=0.5
ws=0.6
rp=0.1
rs=20
[n,wn]=cheb1ord(wp,ws,rp,rs);
[b,a]=cheby1(n,rp,wn);
figure
freq_fft(b,a);

wp=0.6
ws=0.5
rp=0.1
rs=20
[n1,wn1]=cheb1ord(wp,ws,rp,rs);
[b,a]=cheby1(n1,rp,wn1,'high');
figure
freq_fft(b,a);


wp=[0.2 0.6]
ws=[0.1 0.7]
rp=0.1
rs=20
[n2,wn2]=cheb1ord(wp,ws,rp,rs);
[b,a]=cheby1(n2,rp,wn2);
figure
freq_fft(b,a);

ws=[0.2 0.6]
wp=[0.1 0.7]
rp=0.1
rs=20
[n3,wn3]=cheb1ord(wp,ws,rp,rs);
[b,a]=cheby1(n3,rp,wn3,'stop');
figure
freq_fft(b,a);