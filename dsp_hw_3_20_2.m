clear all;close all;clc;

b=[zeros(1,6),1];

p1=-0.5+0.5*i;
p2=-0.5-0.5*i;

a=poly([p1 p1 p1 p1 p2 p2 p2 p2]);

x=[1,zeros(1,19)];

plot(filter(b,a,x));