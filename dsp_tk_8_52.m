clc;
clear all;
close all;

f=[0 0.15 0.2 0.6 0.65 1];
a=[0 0 1 1 0 0];

n_y=8;
[b_y,a_y]=yulewalk(n_y,f,a);


n_2=40;
b_2=fir2(n_2,f,a);


f=f';
a=a';

n_pm=40;
b_pm=firpm(n_pm,f,a);


h1=freq_fft(b_y,a_y);
h2=freq_fft(b_2,1);
[h3,a]=freq_fft(b_pm,1);


h1=abs(h1);
h2=abs(h2);
h3=abs(h3);

h1=h1/max(h1);
h2=h2/max(h2);
h3=h3/max(h3);

h1=h1(1:length(h1)/2);
h2=h2(1:length(h2)/2);
h3=h3(1:length(h3)/2);

a=a(1:length(a)/2);


plot(a,h1,a,h2,a,h3)


