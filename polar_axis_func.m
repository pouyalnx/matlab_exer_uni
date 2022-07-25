clc
clear all
close all


a=19;
ad=0.1;
polar(0,20)
hold
for teta=-10*pi:pi*ad:10*pi
    polar(teta,a,'.');
    a=a-ad;
    if a<0
        break
    end
    pause(0.04)
end