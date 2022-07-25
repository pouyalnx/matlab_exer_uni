clear all
close all
clc

M=5
n=1:128;
x=2*sin(0.1*2*pi*n)+1.5*sin(0.5*2*pi*n);

h=[0,1,0,1];

y=conv(x,h);
y1=y(1:M:end);
subplot(2,1,1)
plot(y1


y2=zeros(1,int32(len(y)/M))

j=1
for cnt=len(h)+1:M:len(x)-1
    y2(j)=dot(h,x(cnt:-1:cnt-len(h)+1));
    j=j+1;
end

subplot(2,1,2)
plot(y2)