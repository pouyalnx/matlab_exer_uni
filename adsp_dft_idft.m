clc
clear all
close all

x=[1,2,3,4];

L=len(x);
l=0:L-1;
h_base=exp(-i*l*2*pi/L);




X=zeros(1,len(x));
h=ones(1,len(x));
for i=1:L
    X(i)=sum(x.*h);
    h=h.*h_base;
end



x2=zeros(1,len(X));
h=ones(1,len(X));
X=conj(X);
for i=1:L
    x2(i)=sum(X.*h);
    h=h.*h_base;
end

x2=conj(x2)/len(x2)

