clear all;close all;clc;

z=[1;2];
p=[1;2;3];

[b,a]=zp2tf(z,p,0)

sys=tf(b,a)

pzplot(sys)
