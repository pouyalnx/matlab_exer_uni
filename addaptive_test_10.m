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

cut=0.18

%f=[0 0.05 0.05005  0.06 0.06006  cut cut+0.00001  1];
%m=[1 1    0        0    1  1  0   0];

%f=[0 0.085 0.0851 0.10 0.105  0.15 0.151 1];
%m=[1 1     0      0     1      1   0     0];

f=[0 0.0835 0.0838 0.10 0.107  0.13 0.131 1];
m=[1 1     0       0     1      1   0     0];

n=1024;


b=fir2(n,f,m);
a=[1,zeros(1,length(b)-1)];

y_n=filter(b,a,y_n);

Y_n=fft(y_n);
Y_n=Y_n.^1.1/2;
y_n=real(ifft(Y_n));


y_n=filter(b,a,y_n);

Y_n=fft(y_n);
Y_n=Y_n.^1.1/4;
y_n=real(ifft(Y_n));
y_n=filter(b,a,y_n);


Y_n=fft(y_n);
Y_n=Y_n.^1.05/2;
y_n=real(ifft(Y_n));


%y_n=y_n*mx_yf/mx_yn;

sound(y_n,Fs);
%sound(y_f,Fs);
