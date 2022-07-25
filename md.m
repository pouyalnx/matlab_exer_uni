clc
clear all
close all

N_inp=10000;
d=(sign(rand(1,N_inp)-0.5)+1)/2;


N_pg=128;
rb=32;
Tb=1/rb;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%pulse generator area
Pg=[zeros(1,N_pg/4),ones(1,N_pg/2),zeros(1,N_pg/4)];

beta=rb/32;
t=-Tb/2:Tb/N_pg:Tb/2-Tb/N_pg;
Pr=(cos(2*pi*beta*t)./(1-(4*beta*t).^2)).*(sin(pi*rb*t)./(pi*rb*t));

x=[];
for k=1:length(d)
   a=1;
   if d(k)==0
       a=-1;
   end
   x=[x,Pr*a];
end

%plot(x)
%title('pulse generator output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Ht area

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Hc area
%figure
n=4e-1;
y=x+random('norm',0,n,size(x));
%plot(y)
%title('channel output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Hr area

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%a2d area
nd=0;
dp=[];
T=0;
for k=nd+1:N_pg:length(y)
    if y(k)>T
        bit=1;
    else
        bit=0;
    end
    dp(length(dp)+1)=bit;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%error checking
incorrect=0;
for i=1:length(d)
    if d(i)~=dp(i)
        incorrect=1+incorrect;
    end
end

Pe=incorrect/length(d)

