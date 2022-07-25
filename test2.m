clc
clear all
close all


N1=64;
N2=128;
N3=256;

tm=0.2;

dt1=1/N1;
dt2=1/N2;
dt3=1/N3;


t1=0:dt1:tm-dt1;
t2=0:dt2:tm-dt2;
t3=0:dt3:tm-dt3;

x1=cos(2*pi*1.1*t1);
x2=cos(2*pi*1.1*t2);
x3=cos(2*pi*1.1*t3);



subplot(1,3,1);
plot(x1,'b-*');
subplot(1,3,2);
plot(x2,'r-*');
subplot(1,3,3);
plot(x3,'g-*');


