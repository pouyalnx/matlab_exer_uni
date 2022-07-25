function [ Y] = freq_fft2( b,a)
%freq_fft calculate freq response with fft
%   b a x input
N=4096;

x=zeros(1,N);
x(1)=1;
y=filter(b,a,x);
Y=fft(y);
%subplot(2,1,1);
ang=0:1/N:1-1/N;
ang=ang*2;

h=1


plot(ang(1:floor(N/2)),abs(Y(1:floor(N/2)))/h);
%subplot(2,1,2);
%plot(ang(1:floor(N/2)),phase(Y(1:floor(N/2)))/h);

%plot(abs(Y(10:floor(N/2)-10)));

end

