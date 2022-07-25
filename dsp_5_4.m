clear all;close all;clc

b=0.5*[1 1]
a=[1 0]

[h,ang]=freq_z(b,a);
ang=ang*180/pi;
hold;

cut_off=max(abs(h))/sqrt(2)
find(abs(abs(h)-cut_off)<0.01)

cut_line=cut_off*ones(1,length(ang));
plot(ang,cut_line,'red *');

