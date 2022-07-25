clear all
close all
clc

Fs=800
f_in=200

N_in=16
t=0:N_in-1;
x=sin(2*pi*t*f_in/Fs)+0.1*random('unid',10,1,N_in);
plot(t,x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555
L=8
A=[1,1,0]
F=[0,1/L,1]
h=fir2(16,F,A);

h1=zeros(1,len(h)*L);
h1(1:L:end)=h;

%filters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w1=zeros(1,len(x)*L);
w1(1:L:end)=x;

y1=filter(h1,1,w1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w2=filter(h,1,x);
y2=zeros(1,len(w2)*L);
y2(1:L:end)=w2;


subplot(3,2,1);
plot(x)
title('x')

subplot(3,2,2);
plot(x)
title('x')

subplot(3,2,3);
plot(w1)
title('w1')

subplot(3,2,4);
plot(w2)
title('w2')

subplot(3,2,5);
plot(y1)
title('y1')

subplot(3,2,6);
plot(y2)
title('y2')