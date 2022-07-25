clear all,close all,clc
Fs=1000;
fc1=50;fc2=200;
fc3=450;fc4=300;
fc5=200;fc6=250;
N=32;
Ts=1/Fs;
n=-N/2:3*N/2-1;
L=32*N;
f=(1:L)*Fs/L;
arg1=pi*(n-N/2);
h_LP1=sin(2*fc1*Ts*arg1)./arg1;
fnd=isnan(h_LP1);
h_LP1(fnd)=2*fc1*Ts;
figure,plot(n,h_LP1),title('sinc of lowpass')
grid
h_LP2=sin(2*fc2*Ts*arg1)./arg1;
fnd=isnan(h_LP2);
h_LP2(fnd)=2*fc2*Ts;
figure,plot(n,h_LP2),title('sinc of lowpass')
grid
H_LP1=fft(h_LP1,L);
H_LP2=fft(h_LP2,L);
figure, subplot(2,1,1), plot(f,abs(H_LP1)),title('Lowpass filter')
subplot(2,1,2), plot(f,abs(H_LP2))
%%%
Term1=sin(arg1)./arg1;
fnd=isnan(Term1);
Term1(fnd)=1;
Term2=sin(2*fc3*Ts*arg1)./arg1;
fnd=isnan(Term2);
Term2(fnd)=2*fc3*Ts;
h_HP1=Term1-Term2;
figure,plot(n,h_HP1),title('sinc of highpass')
grid
Term1=sin(arg1)./arg1;
fnd=isnan(Term1);
Term1(fnd)=1;
Term2=sin(2*fc4*Ts*arg1)./arg1;
fnd=isnan(Term2);
Term2(fnd)=2*fc4*Ts;
h_HP2=Term1-Term2;
figure,plot(n,h_HP2),title('sinc of highpass')
grid
H_HP1=fft(h_HP1,L);
H_HP2=fft(h_HP2,L);
figure, subplot(2,1,1), plot(f,abs(H_HP1)),title('Highpass filter')
subplot(2,1,2), plot(f,abs(H_HP2))
%%%
Term1=sin(2*fc6*Ts*arg1)./arg1;
fnd=isnan(Term1);
Term1(fnd)=2*fc6*Ts;
Term2=sin(2*fc5*Ts*arg1)./arg1;
fnd=isnan(Term2);
Term2(fnd)=2*fc5*Ts;
h_BP1=Term1-Term2;
figure,plot(n,h_BP1),title('sinc of bandpass')
grid
H_BP1=fft(h_BP1,L);
figure, plot(f,abs(H_BP1)),title('Bandpass filter')
%%%
Term1=sin(2*fc5*Ts*arg1)./arg1;
fnd=isnan(Term1);
Term1(fnd)=2*fc5*Ts;
Term2=sin(arg1)./arg1;
fnd=isnan(Term2);
Term2(fnd)=1;
Term3=sin(2*fc6*Ts*arg1)./arg1;
fnd=isnan(Term3);
Term3(fnd)=2*fc6*Ts;
h_BS1=Term1+Term2-Term3;
figure,plot(n,h_BS1),title('sinc of a bandpass')
grid
H_BS1=fft(h_BS1,L);
figure, plot(f,abs(H_BS1)),title('Bandstop filter')
