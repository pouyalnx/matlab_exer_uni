%clc
%clear all
%close all



kp=2;
tp=5;
h=tf([tp,1],[tp,0]);
rlocus(h)
freqs(h)