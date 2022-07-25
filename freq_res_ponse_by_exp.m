clear all;close all;clc;

ang=0:0.3:6;
ejw_base=exp(-j*ang);

b=[1,0.5];
a=[1];

n=length(b)+length(a)-1;

b=[b,zeros(1,n-length(b))];
a=[a,zeros(1,n-length(a))];

ejw=ones(1,length(ejw_base));

num=zeros(1,length(ejw_base));
den=zeros(1,length(ejw_base));

for i=1:n
   num=a(i)*ejw+num;
   den=b(i)*ejw+den; 
    ejw=ejw.*ejw_base;
end

Hejw=num./den;

plot(ang,abs(Hejw))
