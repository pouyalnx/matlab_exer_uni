close all
clear all
clc



filename='10 Booty (feat. Pitbull)_noise.wav'
[d,Fs] = audioread(filename);

d=d';
len=floor(length(d)/8);




cut=0.7;
f=[0  cut  cut+0.02   1];
m=[1  1    0      0];
Nf=64;
b=fir2(Nf,f,m);
a=[1,zeros(1,length(b)-1)];
x=filter(b,a,d);



y=zeros(1,len);
e=zeros(1,len); %filter out puts
sig2=zeros(1,len);



N=512;            %fft size



C=ones(1,N);     %cofficent of filter
Y=zeros(1,N);
X=zeros(1,N);

mu=0.04;
beta=0.99;
sig2(N)=0.0004;  %small postive number

for cnt=N+1:len
 
 y(cnt)=sum(x(cnt-N:cnt-1).*C);
 
 e(cnt)=d(cnt)-y(cnt);
 
 sig2(cnt)=beta*sig2(cnt-1)+(1-beta)*y(cnt)^2;
 
 C=C+X.*e(cnt-N:cnt-1)*(mu/sig2(cnt-1));
 
    
end

l=max(y);
k=max(x);
y=y*k/l;

sound(2*y,Fs)
%plot(y/(max(y)));
%hold 
%plot(input/max(input),'red');
%plot(x/max(x),'green');

