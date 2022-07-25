clc
%clear all
%close all

kp=2;
ti=2;
h=tf([kp*ti 0 0],[ti,ti,kp*ti,kp]);
rlocus(h);