clc
clear all
close all

[Rgb,map1]=imread('autumn.tif');
figure
imshow(Rgb,map1);
title('autumn');


i=imread('kids.tif');

[IntensityIm,map2]=imread('kids.tif');
figure
imshow(IntensityIm,map2(:,3:-1:1));
figure
imshow(IntensityIm);
colormap(map2)
whos

isempty(map1)
isempty(map2)
%add an if for detect autmaticly map color