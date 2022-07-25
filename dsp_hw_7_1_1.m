clc;clear all;close all;
Fs=20;
fp=3;
delta_f=2;
As=-50;

%Hamming window selected
N=floor(3.3*Fs/delta_f);
if((N & 1)==0) 
    N=N+1; 
end

i=-floor(N/2):floor(N/2);
fc=(fp+delta_f/2)/Fs;

hp=2*fc*sinc(2*fc*i);
w=hamming(N)';
h=w.*hp;
N_FFT=2048;

H=fft(h,N_FFT);
H=H(1:floor(N_FFT/2));
f_l=[0:2/N_FFT:1-2/N_FFT];
plot(f_l,abs(H));


cut_off=max(abs(H))/sqrt(2);
cnt=1;
while(abs(H(cnt))>cut_off && cnt<length(H))
    cnt=cnt+1;
end

l=zeros(1,length(H))*cut_off;
l(cnt)=1;
hold
plot(f_l,l,'red');


