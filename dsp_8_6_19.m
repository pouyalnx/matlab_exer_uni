clc;clear all;close all;

Fs=400;
fc=50;
k=1;

N=Fs/(k*fc);
b=1/N*ones(1,N);
a=[1,zeros(1,N-1)];

freq_fft(b,a); title(sprintf('Fs:%d',Fs));
[z,p,k]=tf2zp(b,a);
figure
zplane(z,p);title(sprintf('Fs:%d',Fs));


%mode 2

z(end+1)=1;
p2=0.95*z;


[b2,a2]=zp2tf(z,p2,k);

figure;
freq_fft(b2,a2);title(sprintf('Fs:%d',Fs));
[z,p,k]=tf2zp(b2,a2);
figure
zplane(z,p);title(sprintf('Fs:%d',Fs));


Fs=20000;
fc=50;
k=1;

N=Fs/(k*fc);
b=1/N*ones(1,N);
a=[1,zeros(1,N-1)];

freq_fft(b,a);title(sprintf('Fs:%d',Fs));
[z,p,k]=tf2zp(b,a);
figure
zplane(z,p);title(sprintf('Fs:%d',Fs));


%mode 2

z(end+1)=1;
p2=0.95*z;


[b2,a2]=zp2tf(z,p2,k);

figure;
freq_fft(b2,a2);title(sprintf('Fs:%d',Fs));
[z,p,k]=tf2zp(b2,a2);
figure
zplane(z,p);title(sprintf('Fs:%d',Fs));