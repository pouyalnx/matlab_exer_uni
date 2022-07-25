clc
clear all
close all

N=16;
c=(2*floor(2*rand(N,1))-1)+1i*(2*floor(2*rand(N,1))-1);
w=wgn(N,N,0.1);

d=[];
for k=1:N
    d=[d,c+w(:,k)];
end

g=ones(
