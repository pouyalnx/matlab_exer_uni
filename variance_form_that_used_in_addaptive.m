clear all;
close all;
clc;

filename='03 Be Silent1.wav'
[x,Fs] = audioread(filename);
x=x';

filename='03 Be Silent1_noise.wav'
[xn,Fs] = audioread(filename);
xn=xn';

seg2=zeros(1,length(x)+1);
seg2noise=zeros(1,length(x)+1);

beta=0.01;

for k=2:length(seg2)
   seg2(k)=beta*seg2(k-1)+(1-beta)*(x(k-1))^2; 
   seg2noise(k)=beta*seg2noise(k-1)+(1-beta)*(xn(k-1))^2;
end

%plot(seg2);
%figure;
%plot(seg2noise);

%sound(seg2,Fs);

b=dot(seg2,seg2noise);
a=sqrt(dot(seg2,seg2)*dot(seg2noise,seg2noise));
h=b/a

