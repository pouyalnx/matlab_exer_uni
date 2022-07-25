clc
clear all
close all

in1=zeros(128,128);
in1=uint8(in1);
in1(60:70,80:90)=255;
in1(5:10,100:end)=255;
imshow(in1)
figure
image(in1)
who