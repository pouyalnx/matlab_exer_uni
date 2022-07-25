clc
clear all
close all


Na=16;
Nv=8;
sf=floor(2*rand(1,Na));
S=[zeros(Na,Nv/2),eye(Na,Na),zeros(Na,Nv/2)];