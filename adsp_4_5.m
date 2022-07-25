clc
clear all
close all


I=imread('123.jpg');
%I=imnoise(I,'gaussian',1,10);
%I=imnoise(I,'localvar',0.001);
I=imnoise(I,'poisson');
%I=imnoise(I,'salt & pepper',0.02);
figure
imshow(I)