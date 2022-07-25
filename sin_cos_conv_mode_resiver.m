clc
clear all
close all


x=[1,1,0,0,1,1,1,0,0,0,0,0];
y=[0,1,0,1,1,1,0,1,0,1,0,1];

x_cd=1-2*x;
y_cd=1-2*y;

Tp=0.1;
Fp=50;
Fs=1000;
Ts=1/Fs;
t=0:Ts:Tp-Ts;

x_tr=cos(2*Fp*pi*t);
y_tr=sin(2*Fp*pi*t);

plot(x_tr);
hold
plot(y_tr,'red');


out=kron(x_cd,x_tr)+kron(y_cd,y_tr);

figure()
plot(out);

tmp=ones(size(x));

x_de=kron(tmp,x_tr);
y_de=kron(tmp,y_tr);

x_re=out.*x_de;
y_re=out.*y_de;

figure()

plot(x_re)
hold
plot(y_re,'red')

Fpass=Fp-10;

b=fir2(32,[0,2*(Fpass)/Fs,2*(Fpass+2)/Fs,1],[1,1,0,0]);


y_ref=filter(b,1,y_re);
x_ref=filter(b,1,x_re);


figure()
plot(-1*x_ref)
hold
plot(-1*y_ref,'red')



