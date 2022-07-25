clc
clear all

fs1=800;
fs2=1000;
fs3=2000;


fd=20;

N=64;

n=0:N-1;

x1=cos(2*pi*fd*n/fs1);
x2=cos(2*pi*fd*n/fs2);
x3=cos(2*pi*fd*n/fs3);


subplot(2,3,1);
plot(abs(fft(x1,2*N)));
title('x1')
subplot(2,3,2);
plot(abs(fft(x2,2*N)));
title('x2')
subplot(2,3,3);
plot(abs(fft(x3,2*N)));
title('x3')

subplot(2,3,4);
plot(x1);
title('x1')
subplot(2,3,5);
plot(x2);
title('x2')
subplot(2,3,6);
plot(x3);
title('x3')



b=fir1(64,[0,0.5]);
