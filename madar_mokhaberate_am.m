clc
clear all
close all


m=0.9;

fs=1e4;
T=0.2;

fm=5;
fc=100;

t=0:1/fs:T-1/fs;

a=2;
data=cos(2*pi*t*fm);
car=a*cos(2*pi*t*fc).*(1+m*data);
plot(t,car);

figure;
%freqz(data,1);
%figure;
%freqz(car,1);

decode=zeros(1,length(t));
vc0=0;
r=20;
c=1000e-6;
tav=r*c;
for k=1:length(t)
    if car(k)>vc0
        vc0=car(k);
    else
        vc0=vc0*(fc/wr)/(fc/wr-1);
    end
    decode(k)=vc0;
end
plot(t,decode);

