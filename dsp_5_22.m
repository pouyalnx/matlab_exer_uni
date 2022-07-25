clear all;close all;clc;

alpha=-6.76105
beta=17.456335

b=[alpha,beta,alpha];
a=[1,0,0];

%freqz(b,a);
[hw,ang]=freq_z(b,a);