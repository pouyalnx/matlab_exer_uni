clc
clear all
close all


I=imread('123.jpg');
I=rgb2gray(I);

pf1=fspecial('disk');
figure
imshow(imfilter(I,pf1,'same'));
title('disk')



pf1=fspecial('average')
figure
imshow(imfilter(I,pf1,'same'));
title('average')



pf1=fspecial('gaussian');
figure
imshow(imfilter(I,pf1,'same'));
title('gaussian')



pf1=fspecial('laplacian');
figure
imshow(imfilter(I,pf1,'same'));
title('laplacian')


pf1=fspecial('motion');
figure
imshow(imfilter(I,pf1,'same'));
title('motion')

pf1=fspecial('log');
figure
imshow(imfilter(I,pf1,'same'));
title('log')

pf1=fspecial('sobel');
figure
imshow(imfilter(I,pf1,'conv'));
title('sobel')