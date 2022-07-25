clc
clear all
close all


N=1;
M=4096;

%d=rand(N,M)';
d=wgn(M,N,8);

med=mean(d)
var=var(d)