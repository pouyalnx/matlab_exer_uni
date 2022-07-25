clc
clear all
close all

data=floor(rand(1024,1)*2);
c=conv_code(data);

tb=conv_init();

d=conv_decode(tb,c);


err=sum(d==data)/len(d)