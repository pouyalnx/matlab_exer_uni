clc;
clear all;
close all;

N=250;

fp1=0.05; %normalizated by Fs;
fp2=0.35; %normalizated by Fs;

l=0:floor(N/2);
f=2*fp2*sinc(2*fp2*l)-2*fp1*sinc(2*fp1*l);


fir1=[f(end:-1:1),f];
fir2=[f(end:-1:2),f];

figure;stem(fir1); 
figure;stem(fir2);


N_F=2048;

H1=abs(fft(fir1,N_F));
H2=abs(fft(fir2,N_F));


H1=H1(1:floor(N_F/2));
H2=H2(1:floor(N_F/2));
f=0:2/N_F:1-2/N_F;

figure;
plot(f,H1,f,H2);
xlabel('blue for M odd and green for M even');




