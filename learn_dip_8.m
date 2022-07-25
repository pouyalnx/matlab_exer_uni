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

x=double(I2) %uint just for showin;
h=1/49*ones(7,7);
y=conv2(x,h);
figure
imshow(y,[])




