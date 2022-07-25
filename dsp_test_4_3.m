clc;
clear all;

a=[1,2,3]
b=[2,1]

b_1=[b,b(1)];
b_2=[b(2),b(1),b(2)];

c=ifft(fft(a).*fft(b_2));
d=ifft(fft(a).*fft(b_1));

res=[c(length(c)),d(length(d))]

c=ifft(fft(a).*conj(fft(b_1)));
d=ifft(fft(a).*conj(fft(b_2)));

res=[c(1),d(1)]