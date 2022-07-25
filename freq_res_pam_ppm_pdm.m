clc
clear all
close all

d=[0,1,0,1,1,0,0];

Fs=2000;
Ts=0.1;
Tp=0.04;
t=0:1/Fs:Ts;
x=[ones(1,ceil(len(t)*Tp/Ts)),zeros(1,ceil(len(t)*(Ts-Tp)/Ts))];
plot(x);
freq_fft(x,1);

pam=[];
for k=1:len(d)
    if d(k)
        pam=[pam,x];
    else
        pam=[pam,-1*x];
    end
end
figure
plot(pam)
freq_fft(pam,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


