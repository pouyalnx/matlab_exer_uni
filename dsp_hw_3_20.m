clear all;close all;clc;

b=[0,0,0,1];
a=poly([1 -1 -1]);



x=[1,zeros(1,19)];

h=filter(b,a,x);
plot(h)