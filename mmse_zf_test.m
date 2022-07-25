clc
clear all
close all


N=8;
d=(2*floor(2*rand(1,N))-1)+1i*(2*floor(2*rand(1,N))-1);
w=(wgn(1,N,1)+1i*wgn(1,N,1))';
d=d';


h=[1,0.2,0.2,0.2,0.1,0,0,0];
H=toeplitz(h);


noise_mul=0:0.05:2;
mmse_err=zeros(length(noise_mul));
zf_err=zeros(length(noise_mul));
ml_err=zeros(length(noise_mul));

for k=1:length(noise_mul)

%w=(rand(1,N)+1i*rand(1,N))';


y=H*d+w*noise_mul(k);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Gml=H';
x_ml=Gml*y;


tmp=x_ml;
tmp(real(tmp)<0 & imag(tmp)<0)=-1-1i;
tmp(real(tmp)<0 & imag(tmp)>=0)=-1+1i;
tmp(real(tmp)>=0 & imag(tmp)<0)=1-1i;
tmp(real(tmp)>=0 & imag(tmp)>=0)=1+1i;
d_ml=tmp;

Gzf=inv((H')*H)*(H');
x_zf=Gzf*y;



tmp=x_zf;
tmp(real(tmp)<0 & imag(tmp)<0)=-1-1i;
tmp(real(tmp)<0 & imag(tmp)>=0)=-1+1i;
tmp(real(tmp)>=0 & imag(tmp)<0)=1-1i;
tmp(real(tmp)>=0 & imag(tmp)>=0)=1+1i;
d_zf=tmp;


Kx=cov(d)*eye(N);
Kw=cov(w)*eye(N);

Gmmse=Kx*(H')*inv((H')*Kx*H+Kw);
x_mmse=Gmmse*y;

tmp=x_mmse;
tmp(real(tmp)<0 & imag(tmp)<0)=-1-1i;
tmp(real(tmp)<0 & imag(tmp)>=0)=-1+1i;
tmp(real(tmp)>=0 & imag(tmp)<0)=1-1i;
tmp(real(tmp)>=0 & imag(tmp)>=0)=1+1i;
d_mmse=tmp;

ml_err(k)=sum(abs(real(d-d_ml))+abs(imag(d-d_ml)));
zf_err(k)=sum(abs(real(d-d_zf))+abs(imag(d-d_zf)));
mmse_err(k)=sum(abs(real(d-d_mmse))+abs(imag(d-d_mmse)));

end

figure()
subplot(3,1,1)
plot(noise_mul,mmse_err)
hold
plot(noise_mul,mmse_err,'*')
title('mmse')

subplot(3,1,2)
plot(noise_mul,zf_err)
hold
plot(noise_mul,zf_err,'*')
title('zf')

subplot(3,1,3)
plot(noise_mul,ml_err)
hold
plot(noise_mul,ml_err,'*')
title('ml')



