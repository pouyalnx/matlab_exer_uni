clear all;close all;clc;

Nf=12
b=[zeros(1,Nf-1),1];
a=[1,zeros(1,Nf-1)];

b2=conv(b,b);
a2=conv(a,a);

N=1024;
teta=0:1/N:1-1/N;
delta=[1,zeros(1,N-1)];

h1=filter(b,a,delta);
H1=fft(h1);
h2=filter(b2,a2,delta);
H2=fft(h2);

plot(teta,abs(H1),teta,abs(H2));

cut_off1=abs(max(H1))/sqrt(2);
cut_off2=abs(max(H2))/sqrt(2);

fnd1=find(abs(abs(H1)-cut_off1)<0.001);
fnd2=find(abs(abs(H2)-cut_off2)<0.01);

hold
if ~isempty(fnd1)
   point1=teta(fnd1) 
   plot(teta(fnd1),abs(H1(fnd1)),'red'); 
end
if ~isempty(fnd2)
   point1=teta(fnd2) 
   plot(teta(fnd2),abs(H2(fnd2)),'green'); 
end
hold
   

figure
plot(teta,phase(H1),teta,phase(H2));
title('phase digram');
