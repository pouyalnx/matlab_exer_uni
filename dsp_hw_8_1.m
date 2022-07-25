clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs=100;
rp=0.2;
rs=60;
f=[10 20];
a=[1  0];

dev=[(10^(rp/20)-1)/(10^(rp/20)+1) 10^(-rs/20)];

[n,fo,ao,w]=firpmord(f,a,dev,fs)
b=firpm(n,fo,ao,w);

freq_fft(b,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs_2=400
rp_2=1
rs_2=[30 50 50 30];
f2=[20 30 80 90 110 120 170 180];
a2=[0  0  1  0 0];
dev2=[rs2rs(rs_2(1)),rs2rs(rs_2(2)),rp2rp(rp_2),rs2rs(rs_2(2)),rs2rs(rs_2(1))];



[n2,fo2,ao2,w2]=firpmord(f2,a2,dev2,fs_2)
b2=firpm(n2,fo2,ao2,w2);

freq_fft(b2,1);







