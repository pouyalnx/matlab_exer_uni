clear all;
close all;
clc;

Fs=2;

fp1=0.15;
fp2=0.2;



fc=sqrt(fp1*fp2);

teta=fc/Fs*2*pi;

bw=fp2-fp1;

r=1-bw/Fs*pi;

if(r<0.9)
    r=0.9;
end

p=[r*exp(j*teta),r*exp(-j*teta)]';
z=[1 -1]';
k=1;

[b,a]=zp2tf(z,p,k);
zplane(z,p);
figure
freq_fft(b,a);