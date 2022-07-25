clc;
clear all;
close all;

f=[0,0.25,0.3,0.7,0.75,1];
a=[0,0,   1,  1,  0,   0];


N_FFT=4096;
f_v=0:2/N_FFT:1-2/N_FFT;



n=5; %for start;
b1=firls(n,f,a);
H1=fft(b1,N_FFT);
H1=abs(H1(1:N_FFT/2));

n=10; 
b2=firls(n,f,a);
H2=fft(b2,N_FFT);
H2=abs(H2(1:N_FFT/2));


n=20; 
b3=firls(n,f,a);
H3=fft(b3,N_FFT);
H3=abs(H3(1:N_FFT/2));

n=100; 
b4=firls(n,f,a);
H4=fft(b4,N_FFT);
H4=abs(H4(1:N_FFT/2));

plot(f_v,H1,f_v,H2,f_v,H3,f_v,H4);
