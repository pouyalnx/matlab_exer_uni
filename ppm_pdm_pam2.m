clc
clear all
close all


d=[1,0,0,0,1,0];
Fs=4000;
T=0.02;
f_base=200;
d_f=200;

t=0:1/Fs:T;

data=[];
for cnt=1:len(d)
    data=[data,sin(2*pi*(f_base+d_f*d(cnt))*t)];
end

plot(data);
    
%decoder idea
m1=[1,0,0];
f1=[0,f_base/Fs,1];
n=20;
fi1=fir2(n,f1,m1);
m2=[0,0,1];
f2=[0,(f_base+d_f)/Fs,1];
fi2=fir2(n,f2,m2);

x1=filter(fi1,1,data);
x2=filter(fi2,1,data);

figure
subplot(3,1,1);
plot(x1);
subplot(3,1,2);
plot(x2);
subplot(3,1,3);
plot(data);








