clc
clear all
close all


V=[1,0,0,0,1];%MSB
N=length(V);
s=0;
for i=1:length(V)
    s=s+V(i)*2^(N-i);
end

s1=bi2de(V);

s1==s