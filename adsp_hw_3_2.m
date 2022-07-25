clc
clear all
close all

Fs=48000;
fc=3000;
fs=4000
N=128;
n=0:N;

x=cos(2*pi*n*fc/Fs);
figure
plot(x)
title('input signal')


rp=1;
rs=40;
f=[fc fs];
a = [1 0];

figure
dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)];
[n,fo,ao,w] = firpmord(f,a,dev,Fs);
b = firpm(n,fo,ao,w);
freqz(b,1,1024,fs);
title('Lowpass Filter Designed to Specifications');

figure
v=filter(b,1,x);
plot(v)
title('filterd input signal')

M=6
y=v(1:M:end);

figure
plot(y)
title('decimate output signal')

figure
freq_fft(y,1);
title('decimate output signal fft')

figure
freq_fft(x,1);
title('input signal fft')

op_6_2=len(b)*Fs;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

M1=3

rp=0.5;
rs=40;
f=[fc Fs/(2*M1)];
a = [1 0];


dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)];
[n,fo,ao,w] = firpmord(f,a,dev,Fs);
b1 = firpm(n,fo,ao,w);
v1=filter(b1,1,x);
y1=v1(1:M1:end);

op_3_2=Fs*len(b1);

M2=2

rp=0.5;
rs=40;
f=[fc fs];
a = [1 0];


dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)];
[n,fo,ao,w] = firpmord(f,a,dev,Fs/M1);
b2 = firpm(n,fo,ao,w);
v2=filter(b2,1,y1);
y2=v2(1:M2:end);

op_3_2=op_3_2+Fs/M1*len(b2);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

M1=2

rp=0.5;
rs=40;
f=[fc Fs/(2*M1)];
a = [1 0];


dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)];
[n,fo,ao,w] = firpmord(f,a,dev,Fs);
b1 = firpm(n,fo,ao,w);
v1=filter(b1,1,x);
y1=v1(1:M1:end);

op_2_3=Fs*len(b1);

M2=3

rp=0.5;
rs=40;
f=[fc fs];
a = [1 0];


dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)];
[n,fo,ao,w] = firpmord(f,a,dev,Fs/M1);
b2 = firpm(n,fo,ao,w);
v2=filter(b2,1,y1);
y2=v2(1:M2:end);

op_2_3=op_2_3+Fs/M1*len(b2);

