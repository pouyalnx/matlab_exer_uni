clc
clear all
close all

%out signal
landa=5;
h=4*landa;
dh=0.1;
z=-h:dh:h;


beta=2*pi/landa;
x=sin(beta*(h-abs(z)));
plot(x);