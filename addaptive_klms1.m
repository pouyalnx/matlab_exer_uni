
%false

clear all
close all
clc


N=4096
input=ecg(N);
noise=randn(1,N);





D=6;
d=input+noise*0.5;




cut=0.1;
f=[0  cut  cut+0.0002   1];
m=[1  1    0      0];
N=256;
b=fir2(N,f,m);
a=[1,zeros(1,length(b)-1)];
x=filter(b,a,d);


%x=d(D:end);
%x(end:end+D)=0;




mu=0.01;
beta=0.4;

sig2=zeros(1,N);
sig2(1)=0.0005; %small postive

y=zeros(1,N);
e=ones(1,N);

over_factor=0.1
up_factor=5
for k=2:N
    y(k)=0;
    
    for l=1:k-1
    y(k)=mu*x(k)*x(l)*e(l)/sig2(l)+y(k);
    end
    
    sig2(k)=beta*sig2(k-1)+(1-beta)*x(k-1)^2;
    
    e(k)=d(k)-y(k);
    mu=sig2(k)*over_factor;
    beta=abs(e(k)/y(k))*up_factor;
    if(beta>=1)
        beta=0.99;
    end
end


plot(y);
