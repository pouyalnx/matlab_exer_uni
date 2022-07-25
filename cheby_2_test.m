clear all
close all
clc


wp=0.5
ws=0.6
rp=1
rs=40

[n,wc]=cheb2ord(wp,ws,rp,rs);
[b,a]=cheby2(n,rs,wp);
figure
freq_fft(b,a);



wp=0.6
ws=0.5
rp=1
rs=40

[n2,wc]=cheb2ord(wp,ws,rp,rs);
[b,a]=cheby2(n2,rs,wp,'high');
figure
freq_fft(b,a);


wp=[0.4 0.7]
ws=[0.3 0.8]
rp=1
rs=40

[n3,wc]=cheb2ord(wp,ws,rp,rs);
[b,a]=cheby2(n3,rs,wp);
figure
freq_fft(b,a);

wp=[0.4 0.7]
ws=[0.45 0.65]
rp=20
rs=40

[n4,wc]=cheb2ord(wp,ws,rp,rs);
[b,a]=cheby2(n4,rs,wp,'stop');
figure
freq_fft(b,a);



