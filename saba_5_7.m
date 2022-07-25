clc
clear all
close all

x=0:40;
F=-(-x.^2+16*x+20);
plot(x,F)
title("Function F")
ylabel("F")
xlabel("x")

fitnessF=@(x)-(-x.^2+16*x+20);
lb=0;
ub=15;

xopt=ga(fitnessF,1,[],[],[],[],lb,ub);
yopt=fitnessF(xopt);
hold
plot(xopt,yopt,'red*')
