clear all;clc;


a=[1,2,3]
b=[2,1]



ifft(fft(a,4).*fft(b,4))


ifft(fft(a,4).*conj(fft(b,4)))