N=6;
a=[1,zeros(1,N-2),1]; %1/(1-z^-6)
b=[1,zeros(1,N-1)];


freq_fft(b,a);

Fs=1000;
f1=500;
f2=50;
T=0.05

t=0:1/Fs:T-1/Fs;
x=2*cos(2*pi*t*f1);%+cos(2*pi*t*f2);

y=filter(b,a,x);

figure;
plot(t,x,t,y);
