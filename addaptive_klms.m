clear all
close all
clc


N=1024
input=ecg(N);
noise=randn(1,N);



D=8;
d=input+noise;

%x=d(D:end);
%x(end:end+D)=0;
x=log(noise);

mu=0.0004;
beta=0.9;

sig2=ones(1,N)*mu;


y=zeros(1,N);
e=zeros(1,N);


for k=2:N
    
    y(k)=0;
    
    for l=1:k-1
    y(k)=mu*x(k)*x(l)*e(l)/sig2(l)+y(k);
    end
    
    sig2(k)=beta*sig2(k-1)+(1-beta)*x(k-1)^2;
    
    e(k)=d(k)-y(k);
end

plot(e);
