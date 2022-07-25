clc
clear all force
close all force
figure

in1=imread('spine.tif');
imshow(in1);

figure
[y,x]=imhist(in1,128); 
x1=len(x)
bar(x(1:min(len(x),len(y))),y(1:min(len(x),len(y))));

figure
[y,x]=imhist(in1); 
x2=len(x)
bar(x(1:min(len(x),len(y))),y(1:min(len(x),len(y))));

out1=im2bw(in1,15/255);
figure
imshow(out1);


in2=imread('pout.tif');
figure
imshow(in2);

figure
[y,x]=imhist(in2);
bar(x(1:min(len(x),len(y))),y(1:min(len(x),len(y))));


figure
level=graythresh(in2);
out2=im2bw(in2,level);


figure
imshow(out2);