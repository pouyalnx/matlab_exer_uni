clc
clear all
close all


x=double(rgb2gray(imread('123.jpg')));

h=zeros(8,8);
h(1:2:end,:)=1;
h(2:2:end,:)=-1;

y=conv2(x,h,'same');
figure
imshow(y)

y2=corr2(x,y);
