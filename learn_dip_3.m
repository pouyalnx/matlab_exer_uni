clear all
close all
clc
I=imread('123.jpg');
figure
imshow(I);


I1=imread('324.jpg');
figure
imshow(I1);


whos
I2=rgb2gray(I1);
figure
imshow(I2);

imwrite(I2,'123_gray.jpg','jpeg','quality',100);
I3=imread('123_gray.jpg');
imshow(I3)

Info=imfinfo('123.jpg');
Info
ImageByte=Info.Width*Info.Height*Info.BitDepth/8;

figure

imshow(I(:,:,1))
title('red')
figure

imshow(I(:,:,2))
title('green')
figure

imshow(I(:,:,3))
title('blue')

max(I)
max(max(I))
