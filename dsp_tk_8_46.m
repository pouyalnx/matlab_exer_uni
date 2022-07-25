clear all
close all
clc
fs2=1000;
fs=500
wp=[100 200]
dw=25;
ws=[wp(1)-dw wp(2)+dw];

rs=20
rp=0.1



[n1,wn1]=buttord(wp/fs,ws/fs,rp,rs);
[b1,a1]=butter(n1,wn1);
[z1,p1,k1]=tf2zp(b1,a1);
zplane(z1,p1);
figure;


[n2,wn2]=cheb1ord(wp/fs,ws/fs,rp,rs);
[b2,a2]=cheby1(n2,rp,wn2);
[z2,p2,k1]=tf2zp(b2,a2);
zplane(z2,p2);
figure;


[n3,wn3]=cheb2ord(wp/fs,ws/fs,rp,rs);
[b3,a3]=cheby2(n2,rs,wn3);
[z3,p3,k3]=tf2zp(b3,a3);
zplane(z3,p3);
figure;

[n4,wn4]=ellipord(wp/fs,ws/fs,rp,rs);
[b4,a4]=ellip(n2,rp,rs,wn2);
[z4,p4,k4]=tf2zp(b4,a4);
zplane(z4,p4);
figure;



f=[ws(1),wp(1),wp(2),ws(2)]/fs;
a=[0    ,1    ,0];
dev = [10^(-rs/20) (10^(rp/20)-1)/(10^(rp/20)+1)   10^(-rs/20)];


[n5,fo5,ao5,w5]=firpmord(f,a,dev);
b5=firpm(n5,fo5,ao5,w5);
[z5,p5,k5]=tf2zp(b5,[1,zeros(1,length(b5)-1)]);
zplane(z5,p5);
figure;


h1=abs(freq_fft(b1,a1));
h1=h1(1:length(h1)/2);

h2=abs(freq_fft(b2,a2));
h2=h1(1:length(h2)/2);



h3=abs(freq_fft(b3,a3));
h3=h3(1:length(h3)/2);

h4=abs(freq_fft(b4,a4));
h4=h4(1:length(h4)/2);

h5=abs(freq_fft(b5,1));
h5=h5(1:length(h5)/2);

ang=(0:1/length(h1):1-1/length(h1))*fs;

plot(ang,h1,ang,h2,ang,h3,ang,h4,ang,h5)



