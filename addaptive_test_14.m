clc
clear all
close all

filename='07 - A Hero Comes Home1.wav'
%filename='03 Be Silent1.wav'

%filename='speech_dft_8k_2.wav'
[y,Fs] = audioread(filename);

l=length(y);
y=y(1:floor(l/6),1);


randn('seed',sum(clock*200));
n=randn(size(y));
n=n*0.05*(max(y)-min(y));


y_n=(n+y)';
y_f=y_n;
y_x=y';
n=n';


%Y_n=fft(y_n);
%Y_n=Y_n.^1.67;
%y_n=real(ifft(Y_n));

cut=0.6
f=[0  cut  cut+0.002   1];
m=[1  1    0      0];
N=128;

b=fir2(N,f,m);
a=[1,zeros(1,length(b)-1)];
y_n=filter(b,a,y_n);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%mn=mean(n);
%my=mean(y_n);
%varn=mean((n-mn).^2);
%vary=mean((y_n-my).^2);
%covxy=mean(abs((n-mn).*(y_n-my)));
%g=covxy/sqrt(varn*vary);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


mu = 0.2;            % LMS step size.
ha = adaptfilt.lms(256,mu);
[x,e]=filter(ha,y_f,y_n);

sound(x,Fs)
plot(e);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mx=mean(x);
my=mean(y');
varx=mean((x-mx).^2);
vary=mean((y'-my).^2);
covxy=mean(abs((x-mx).*(y'-my)));
g=covxy/sqrt(varx*vary);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%