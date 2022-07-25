clc
clear all
close all


diff=4000-2300;
A=[-15000,diff,diff,diff-15000+2000,diff,diff,diff+2000];

diff=3100-2600;
B=[-11000,diff,diff,diff-11000+1500,diff,diff,diff+1500];

Ai=roots(A(end:-1:1))
Bi=roots(B(end:-1:1))