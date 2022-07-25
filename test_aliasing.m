clc
clear all
close all


Fs=8000;
f1=1000;
f2=6000;

T=0.1;
t=0:1/Fs:T-1/Fs;
x_1=cos(2*pi*t*f1);
x_2=cos(2*pi*t*f2);

%Expand=8;
%x_e=x;%zeros(1,length(x)*Expand);
%for k=1:Expand
   %x_e(k:Expand:end)=x; 
%end


%b=fir1(128,0.5);

%x_f=filter(b,1,x_e);
subplot(1,2,1);
plot(abs(fft(x_1)));
subplot(1,2,2);
%plot(abs(fft(x_f/max(x_f))));
plot(abs(fft(x_2)));