clc
clear all
close all

N=4096;
cp=16;


data=floor(rand(1,N)*cp);
data(1:512)=1;
data(512:1014)=1;
data(1512:2014)=1;

[tb,l,hs,h]=hf_header(data,cp);

subplot(2,1,1);
stem(l);
title('bit len');
subplot(2,1,2);
stem(hs);
title('hs');


c=hf_coder(tb,l,data);
eff=N*sqrt(cp)/length(c)

d=hf_decoder(tb,l,c);
vaild=sum(d==data)/N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
byte=hf_pack(h,c);

[tb_new,l_new,c_new] = hf_unpack(byte,cp);

d_new=hf_decoder(tb_new,l_new,c_new);


vaild_new=sum(d_new==data)/N
