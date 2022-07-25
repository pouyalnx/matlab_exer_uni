close all;
clear all;
clc;

N=7;
cutoff=0.2;

n=-N:N;
h=sinc(cutoff*pi*n);

plot(n,h);
title('sampled sinc');

figure;
freq_fft(h,1);
title('freq reponse be aware that 1->fs/2 and 2->fs');


tri=[0:1/N:(N-1)/N,1,(N-1)/N:-1/N:0];
tri(N)=0;

figure;
plot(n,h.*tri);
title('windowed sinc');


figure;
freq_fft(h.*tri,1);
title('freq reponse of windowed sinc be aware that 1->fs/2 and 2->fs');
