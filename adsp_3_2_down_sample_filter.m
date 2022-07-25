clc
clear all
close all

N=18
M=4

x=random('unid',124,1,N);
h=[1,0,1]
%code1
v=conv(x,h)
y1=v(1:M:end)

%code2
y2=zeros(1,ceil(len(x)/M))
for i=1:len(y2)-1
    y2(i)=dot(h,x(M*i+1:-1:M*i-len(h)+2));
end

subplot(2,1,1)
plot(y1)
subplot(2,1,2)
plot(y2)


