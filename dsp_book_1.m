clc
clear all
close all

N=4096*4;
P=(2^35)-31;
A=5^5;
x0=12345;
x=zeros(1,N);

x(1)=12;
for k=2:N
    x(k)=mod(A*x(k-1),P);
end

%subplot(1,2,1);
%plot(x);

%subplot(1,2,2);
%plot(abs(fft(x)));

[counts,centers] = hist(x);

bar(centers,counts);
