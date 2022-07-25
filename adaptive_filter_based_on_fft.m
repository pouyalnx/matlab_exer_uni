close all
clear all
clc


%d=[1 1 1 1];      %input signal
%x=d;              %filter error input
%len=length(x);


len=4096;
input=ecg(len);
noise=randn(1,len);


d=input+noise*0.5;

cut=0.05;
f=[0  cut  cut+0.0002   1];
m=[1  1    0      0];
N=256;
b=fir2(N,f,m);
a=[1,zeros(1,length(b)-1)];
x=filter(b,a,d);





y=zeros(1,len);
e=zeros(1,len); %filter out puts
sig2=zeros(1,len);



N=256;            %fft size
C=ones(1,N);     %cofficent of filter
Y=zeros(1,N);
X=zeros(1,N);

mu=0.0004;
beta=0.999;
sig2(N)=0.0004;  %small postive number

for cnt=N+1:len
 
 %X=fft(x(cnt-N:cnt-1));   
 %Y=X.*C;   
 %y(cnt)=sum(ifft(Y)); %this value isnt successful
 
 y(cnt)=sum(x(cnt-N:cnt-1).*C);
 
 e(cnt)=d(cnt)-y(cnt);
 
 sig2(cnt)=beta*sig2(cnt-1)+(1-beta)*y(cnt)^2;
 
 C=C+X.*e(cnt-N:cnt-1)*(mu/sig2(cnt-1));
 
    
end


plot(y/(max(y)));
hold 
plot(input/max(input),'red');
%plot(x/max(x),'green');

