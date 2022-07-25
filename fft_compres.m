clc
clear all
close all


n=32;
x=256*rand(1,n);



X=fft(x);

figure
subplot(2,1,1);
plot(imag(X));
subplot(2,1,2);
plot(real(X));



q=512;
Y=ceil(q*real(X)/max(real(X)))+1i*ceil(q*imag(X)/max(imag(X)));
y=ifft(Y);

figure
plot(x/max(abs(x)));
hold
plot(abs(y)/max(abs(y)));