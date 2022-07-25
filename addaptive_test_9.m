clear all;
close all;
clc;

filename='07 - A Hero Comes Home1.wav'
[y,Fs] = audioread(filename);


randn('seed',sum(clock*200));
n=randn(size(y));
n(:,2)=0;
n=n*0.02*(max(y(:,1))-min(y(:,1)));

y_n=(n(:,1)+y(:,1))';
y_f=y_n;
y_x=y(:,1)';


mx_yf=max(y_f);

f=[0 0.2  1];
m=[1 0.1  0];
n=128;

b=fir2(n,f,m);
a=[1,zeros(1,length(b)-1)];

y_n=filter(b,a,y_n);

Y_n=fft(y_n);
Y_n=Y_n.^1.16;
y_n=real(ifft(Y_n));

f=[0 0.2  1];
m=[1 0.1  0];
n=128;
b=fir2(n,f,m);

a=[1,zeros(1,length(b)-1)];
y_n=filter(b,a,y_n);

Y_n=fft(y_n);
Y_n=Y_n.^1.1;
y_n=real(ifft(Y_n));
n=filter(b,a,y_n);
freq_fft(b,a);
mx_yn=max(y_n);

Y_n=fft(y_n);
Y_n=Y_n.^0.95;
y_n=real(ifft(Y_n));


y_n=y_n*mx_yf/mx_yn;

sound(2*y_n,Fs);
%sound(y_f,Fs);
