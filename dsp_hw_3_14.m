clc;clear all;close all;

a=[1,2,3,4];

b=fliplr(a);

p=roots(a);
z=roots(b);


zplane(z,p);
figure
impz(b,a);
