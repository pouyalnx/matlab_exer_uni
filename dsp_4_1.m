clear all;close all;clc;
randn('state',0);
x=randn(1000,1);
autocorr(x)
y=lagmatrix(x,3)

y(isnan(y))=0;

crosscorr(x,y);    