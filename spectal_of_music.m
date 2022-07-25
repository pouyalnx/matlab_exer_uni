clc
clear all
close all

%filename='07 - A Hero Comes Home1.wav'
filename='03 Be Silent1.wav'

[y,Fs] = audioread(filename);

y=y';

yend=length(y)/2;


Y=fft(y);
Y=real(Y(1:yend));
f=0:1/yend:1-1/yend;

for cnt=1:yend
   if(Y(cnt)>500) 
       Y(cnt)=1;
   else
       Y(cnt)=0;
   end
end

plot(f,Y);
