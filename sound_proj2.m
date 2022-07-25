clc
clear all
close all

filename='29.mp3';
[d,Fs] = audioread(filename);
d=d(:,1);

n=2048*16;
t=0:1/Fs:(n-1)/Fs;
f_b=440;
do=zeros(size(d));

for k=1:n:length(d)-n
    data=abs(fft(d(k:k+n-1)));
    [val,pos]=max(data);
    %if pos~=0
    do(k:k+n-1)=cos(2*pi*t*(pos*1.059463/n*Fs+f_b));
    %else
    %do(k:k+n-1)=cos(2*pi*t*1);
    %end
end

sound(do,1.0*Fs);
