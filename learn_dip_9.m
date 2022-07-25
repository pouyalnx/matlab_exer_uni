clc
clear all
close all


I=imread('123.jpg');
I_n=imnoise(I,'gaussian',10,100);
figure
imshow(I)