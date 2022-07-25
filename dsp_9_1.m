clc
clear all
close all

num=[0 0 1];
den=[1 1 1];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[h,f]=freqs(num,den);
plot(abs(h))

cnt=1;
cut_off=max(abs(h))/sqrt(2);
while(abs(h(cnt))>cut_off) 
    cnt=cnt+1;
end
f_cut=f(cnt)    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs=10;
[b,a]=bilinear(num,den,fs);
freq_fft(b,a);

