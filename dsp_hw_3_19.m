clc;close all;clear all;
w=-3:0.1:3;
ej_base=exp(-j*w);

a=[-0.5 -0.5 1];
b=[1 -3 0];

ej=ones(1,length(ej_base));

ha=zeros(1,length(ej_base));
hd=zeros(1,length(ej_base));

for cnt=1:length(a)
    ha=ha+ej*a(cnt);
    hd=hd+ej*b(cnt);
     ej=ej.*ej_base;
end

He=ha./hd;

plot(w,abs(He))


clc;clear all;
w=-6:0.1:6;
ej_base=exp(-j*w);

a=[-0.5 -0.5 1];
b=[1 -3 0];

ej=ones(1,length(ej_base));

ha=zeros(1,length(ej_base));
hd=zeros(1,length(ej_base));

for cnt=1:length(a)
    ha=ha+ej*a(cnt);
    hd=hd+ej*b(cnt);
     ej=ej.*ej_base;
end

He=ha./hd;

figure
plot(w,abs(He))