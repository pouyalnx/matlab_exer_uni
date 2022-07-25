clear all
close all
clc
I=imread('123.jpg');
figure
imshow(I);

I(1:200,1:200,1)=uint8(255);
I(1:200,1:200,2)=uint8(0);
I(1:200,1:200,3)=uint8(0);
figure
imshow(I);