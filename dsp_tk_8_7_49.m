clc;
clear all;
close all;

Fs=2;
fc=0.72;

a=-1-(2*pi*fc/Fs-pi);



b=[1 -1]*(1+a)/2;  % an zero in Fs/2
a=[1 -a];

H1=freq_fft(b,a);
[z,p,k]=tf2zp(b,a);
figure,zplane(z,p);


z2=[z,z]';
p2=[p,p]';

figure
[b2,a2]=zp2tf(z2,p2,k);
[H2,ang]=freq_fft(b2,a2);
figure,zplane(z2,p2);


H1=abs(H1);
H2=abs(H2);

H1c=max(H1)/sqrt(2);
H2c=max(H2)/sqrt(2);

cnt=1;
while(H1(cnt)<H1c)
    cnt=cnt+1;
end
fc1=ang(cnt)
    
cnt=1;
while(H2(cnt)<H2c)
    cnt=cnt+1;
end
fc2=ang(cnt)    
    
    
    
    
    