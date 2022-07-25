clc;clear all;close all;

RE2=1.2;
RE2P=3.3;
RC2=10;

RC1=4.7;
RE1=1.8;
RE1P=5.6;%9.5-RE1;

RF=0.82;
%%%ciruit shape inf

Ic1=(10-0.6)/(RE1+RE1P); %ma
Ic2=(Ic1*RC1-0.6)/(RE2+RE2P); %ma

B1=[100 200 400 500 900];
B2=[100 200 400 500 900];

Rif=rpar(RF,RE1);
Rof=rpar(RC2,RE1+RF);

f=RE1/(RF+RE1);


rp1=B1(2)/(40*Ic1);
rp2=B2(2)/(40*Ic2);


a=(B2*Rof/rp2)*(rpar(RC1,rp2)*B1/(Rif*(B1+1)+rp1));


A=a/(1+a*f)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%non feedback mode
A_n=(B2*RC2/(rp2+RE2*(B2+1)))*(rpar(RC1,rp2)*B1/(RE1*(B1+1)+rp1))


