clc
clear all
close all



filename='03 Be Silent1.wav'
y = audioread(filename);

filename='03 Be Silent1_noise.wav'
[y_n,Fs] = audioread(filename);

l=floor(length(y)/4);
y=y(1:l,1);
y_n=y_n(1:l,1);

y_n=y_n';
y_x=y';
y_f=y_n;

cut=0.7;
f=[0  cut  cut+0.002   1];
m=[1  1    0      0];
N=128;

b=fir2(N,f,m);
a=[1,zeros(1,length(b)-1)];
y_n=filter(b,a,y_n);

D=16;
y_n=y_n(D:end);
y_n(end:end+D-1)=0;


mu = 0.005;  
N2=1024;
N1=4096;
N=length(y_f);

yout=zeros(1,N);
for i=N2:N1-N2:N-N1
    gps0=y_f(i:i+N1);
    gps1=y_n(i:i+N1);
    ha = adaptfilt.lms(N2,mu);
    gps2=filter(ha,gps0,gps1);
    yout(i:i+N1-N2)=gps2(N2:N1);
end

y_f=yout;

freq_fft(y_f,1);


sound(y_f,Fs)