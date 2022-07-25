clc
clear all
close all


A=[1 2 3 4;
   4 5 6 7;
   8 1 2 4;
   2 4 3 7];

I=[1 0 0 0;
   0 1 0 0;
   0 0 1 0;
   0 0 0 1];

rf=inv(A*(A')+100*I)*(A');

dat=[0];

for i=1:100
   x=rand(1,4)';
   z=A*x+rand(1,4)';
   xm=rf*z;
  dat(end+1)=sum(abs(xm-x));
end


rf=inv(A*(A')+12*I)*(A');

dat1=[0];

for i=1:100
   x=rand(1,4)';
   z=A*x+rand(1,4)';
   xm=rf*z;
  dat1(end+1)=sum(abs(xm-x));
end


plot(dat1)
hold
plot(dat)
