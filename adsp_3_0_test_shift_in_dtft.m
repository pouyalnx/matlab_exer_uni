clear all
close all
clc

N=1024
om=0:pi/N:2*pi-pi/N;


PE=8
X=sin(PE*om/2)./sin(om/2);
X(isnan(X))=1;
X11=fft(conj(ifft(X)));
plot(abs(X11))

figure
om1=-pi:pi/N:pi-pi/N;
X1=sin(PE*om1/2)./sin(om1/2);
plot(X1)