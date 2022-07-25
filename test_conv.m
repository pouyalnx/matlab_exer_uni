clc;clear all;close all;



h=[1,2,3,4];
x=[1,2,3,4,5,4,3,2];


Rep=5;
m=min(len(h),len(x));

xz=[zeros(1,m),x];
xr=[x(end-m+1:end),x];;

for rep=1:Rep-1
   xr=[xr,x];
   xz=[xz,zeros(size(x))];
end


figure
subplot(2,1,1);
stem(xr);
subplot(2,1,2);
stem(xz);
title('x ')

y1=[];
y2=[];

for k=len(h):len(xr)
    y1(end+1)=sum(xr(k-len(h)+1:k).*h(end:-1:1));
    y2(end+1)=sum(xz(k-len(h)+1:k).*h(end:-1:1));
end

figure
subplot(2,1,1);
stem(y1);
subplot(2,1,2);
stem(y2);
title('x ')






