clear all;close all;clc;


b=[zeros(1,6),1];

p1=-0.5+0.5*i;
p2=-0.5-0.5*i;
a=poly([p1 p1 p1 p1 p2 p2 p2 p2]);

n=20;

impz(b,a,n)


clear all;clc;


b=[0,0,0,1];
a=poly([1 -1 -1]);

n=20;

figure
impz(b,a,n)
