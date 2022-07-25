clc;clear all;close all;


%purpose of this application is watching freq respones of h[n]
n_fft=4096;
f=0:2/n_fft:1-2/n_fft;

h1=[1 -2 4 3 -1 1];
H1=fft(h1,n_fft);
H1=abs(H1(1:n_fft/2));

h2=[1 -1 3 -2 -1];
H2=fft(h2,n_fft);
H2=abs(H2(1:n_fft/2));


h3=[2 3 -1 1 1 -1 3 2];
H3=fft(h3,n_fft);
H3=abs(H3(1:n_fft/2));

h4=[2 3 -1 3 -1 3 2];
H4=fft(h4,n_fft);
H4=abs(H4(1:n_fft/2));


plot(f,H1,f,H2,f,H3,f,H4);

