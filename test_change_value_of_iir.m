clear all
close all
clc

wp=[0.3 0.6];
ws=[0.2 0.7];
as=50;
ap=0.1;
bit=12;

[n1,wc1]=ellipord(wp,ws,ap,as);
[b1,a1]=ellip(n1,ap,as,wc1);


[n2,wc2]=cheb1ord(wp,ws,ap,as);
[b2,a2]=cheby1(n2,ap,wc2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a_q1=floor(a1*2^bit)/2^bit;
b_q1=floor(b1*2^bit)/2^bit;

h1=abs(freq_fft(b1,a1));
h1=h1(1:length(h1)/2);


h2=abs(freq_fft(b_q1,a_q1));
h2=h2(1:length(h2)/2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ang=0:1/length(h1):1-1/length(h1);


a_q2=floor(a2*2^bit)/2^bit;
b_q2=floor(b2*2^bit)/2^bit;

h3=abs(freq_fft(b2,a2));
h3=h3(1:length(h3)/2);


h4=abs(freq_fft(b_q2,a_q2));
h4=h4(1:length(h4)/2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

plot(ang,h1,ang,h2);
figure
plot(ang,h3,ang,h4);


[z1,p1,k1]=tf2zpk(b1,a1);
[zq1,pq1,kq1]=tf2zpk(b_q1,a_q1);

[z2,p2,k2]=tf2zpk(b2,a2);
[zq2,pq2,kq2]=tf2zpk(b_q2,a_q2);


figure;
zplane(z1,p1);
figure;
zplane(zq1,pq1);

figure;
zplane(z2,p2);
figure;
zplane(zq2,pq2);
