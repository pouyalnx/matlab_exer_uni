clc
clear all
close all

filename='21.mp3';
[d,Fs] = audioread(filename);
d=d(:,1);

n=2048*8;
fb=1000
df=0.5

t=0:1/Fs:(n-1)/Fs;

do=zeros(size(d));

for k=1:n:length(d)-n
    data=abs(fft(d(k:k+n-1)));
    [val,pos]=max(data);
    do(k:k+n-1)=cos(2*pi*t*(fb+df*pos));
end

sound(do,Fs);
