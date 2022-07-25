clc
clear all
close all

I=checkerboard;
whos I

figure
[y,x]=imhist(I); 
bar(x(1:min(len(x),len(y))),y(1:min(len(x),len(y))))

figure
imshow(I)

figure
imshow(uint8(I))

figure
imshow(uint8(I),[0,1])


figure
image(I),axis image, axis off

figure
image(I,'cdatamapping','scaled'),axis image, axis off

figure
image(uint8(I)),axis image, axis off

figure
image(uint8(I),'cdatamapping','scaled'),axis image, axis off