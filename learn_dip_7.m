clc
clear all
close all
I=imread('324.jpg');
figure
imshow(I)

psf=fspecial('gaussian',1,100);
I_blur=imfilter(I,psf,'conv');
figure
imshow(I_blur)


I2=rgb2gray(I);
psf1=fspecial('gaussian',10,5);
I2_blur=imfilter(I2,psf1,'conv');
figure
imshow(I2_blur);

