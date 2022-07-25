clear all,close all,clc
set(0,'defaultaxesfontsize',10)
set(0,'defaulttextfontsize',10)
set(0,'defaultlinelinewidth',1.5)
a=.95;
N=20;
F_s=500;
%%%
num1=[1,zeros(1,N-1),-1];
den1=[1,zeros(1,N-1),-a]
[H1,om1]=freqz(num1,den1,[],F_s);
b1=max(abs(H1))
num1=1/b1*num1
[H1,om1]=freqz(num1,den1,[],F_s);
%%%
num2=[1,zeros(1,N-1),1];
den2=[1,zeros(1,N-1),a]
[H2,om2]=freqz(num2,den2,[],F_s);
b2=max(abs(H2))
num2=1/b2*num2
[H2,om2]=freqz(num2,den2,[],F_s);
%%%
num3=[1,zeros(1,N-1),1];
den3=[1,zeros(1,N-1),-a]
[H3,om3]=freqz(num3,den3,[],F_s);
b3=max(abs(H3))
num3=1/b3*num3
[H3,om3]=freqz(num3,den3,[],F_s);
%%%
num4=[1,zeros(1,N-1),-1];
den4=[1,zeros(1,N-1),a]
[H4,om4]=freqz(num4,den4,[],F_s);
b4=max(abs(H4))
num4=1/b4*num4
[H4,om4]=freqz(num4,den4,[],F_s);
%%%
figure,
subplot(2,2,1),plot(om1,abs(H1)),grid
title('Notch type I')
subplot(2,2,2),plot(om2,abs(H2)),grid
title('Notch type II')
subplot(2,2,3),plot(om3,abs(H3)),grid
title('Peak type I')
subplot(2,2,4),plot(om4,abs(H4)),grid
title('Peak type II')
