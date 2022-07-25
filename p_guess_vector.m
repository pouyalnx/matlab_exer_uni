clc
clear all
close all


N=2;
N_col=8192;

%n=wgn(N,N_col,0.1)';
n=randn(N,N_col)';


Rn=cov(n);
mu=mean(n);


p=zeros(1,N_col);

evc=zeros(1,N_col);
trv=zeros(1,N_col);

for k=1:N_col
   p(k)=(1/det(pi*Rn))*exp(-(n(k,:)-mu)*inv(Rn)*((n(k,:)-mu)'));
   evc(k)=(n(k,:)-mu)*inv(Rn)*((n(k,:)-mu)');
   trv(k)=trace((n(k,:)-mu)'*((n(k,:)-mu))*inv(Rn));
   
end
sum(p)
plot(p)
figure
plot(evc-trv);

