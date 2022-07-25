clear all;
close all;
clc;

filename='03 Be Silent1.wav'
[y,Fs] = audioread(filename);


randn('seed',sum(clock*200));
n=randn(size(y));
n(:,2)=0;
n=n*0.02*(max(y(:,1))-min(y(:,1)));

y_n=(n(:,1)+y(:,1))';
y_f=y_n;
y_x=y(:,1)';



f=[0 0.5 0.501 1];
m=[1 1   0     0];

n=1024;


b=fir2(n,f,m);
a=[1,zeros(1,length(b)-1)];

y_n=filter(b,a,y_n);

%Y_n=fft(y_n);
%Y_n=Y_n.^1.1/2;
%y_n=real(ifft(Y_n));


y_n=filter(b,a,y_n);

%Y_n=fft(y_n);
%Y_n=Y_n.^1.1/4;
%y_n=real(ifft(Y_n));
%y_n=filter(b,a,y_n);


Y_n=fft(y_n);
Y_n=Y_n.^1.05/2;
y_n=real(ifft(Y_n));



sound(y_n,Fs);
%sound(y_f,Fs);
