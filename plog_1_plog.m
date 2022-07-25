clc
clear all
close all

pt=0:0.001:1;

y=pt.*log2(pt)-(1-pt).*log2(1-pt);
plot(pt,y);