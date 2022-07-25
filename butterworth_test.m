clc
clear all
close all

wp=0.3
ws=0.5
rs=20;
rp=10;

[n,wn]=buttord(wp,ws,rp,rs);

[b,a]=butter(n,wn);
freq_fft(b,a);


wp=0.5
ws=0.3
rs=20;
rp=10;

[n,wn]=buttord(wp,ws,rp,rs);
[b,a]=butter(n,wn,'high');

figure
freq_fft(b,a);


wp=[0.3 0.6]
ws=[0.2 0.7]
rs=20;
rp=10;

[n,wn]=buttord(wp,ws,rp,rs);
[b,a]=butter(n,wn);

figure
freq_fft(b,a);


wp=[0.3 0.6]
ws=[0.2 0.7]
rs=20;
rp=10;

[n,wn]=buttord(wp,ws,rp,rs);
[b,a]=butter(n,wn,'stop');

figure
freq_fft(b,a);
