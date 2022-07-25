clc
clear all
close all

gamma=-10:1:100;
gamma_med=40;
n
ys=1-exp(-gamma/gamma_med);
y=exp(-gamma/gamma_med)/gamma_med;

plot(gamma,y)