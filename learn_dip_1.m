clc
clear all
close all

in1=false(128,128);
in1(60:70,80:90)=true;
in1(5:10,100:end)=true;
imshow(in1)
whos


in1=zeros(128,128);
in1(60:70,80:90)=255;
in1(5:10,100:end)=255;
figure
imshow(in1)
whos
