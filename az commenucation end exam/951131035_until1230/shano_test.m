clc
clear all
close all

data=floor(rand(1024,1)*16);

[tb,le]=shano_init(data);


y=shano_coder(tb,le,data);

x=shano_decoder(tb,le,y);


x==data