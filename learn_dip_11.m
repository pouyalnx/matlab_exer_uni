clc
clear all
close all



[mri1,map1]=imread('mri.tif');
figure 

I=imfinfo('mri.tif')

imshow(mri1,map1)

mri=uint8(zeros(128,128,1,27));
for frame=1:27
    [mri(:,:,:,frame),map]=imread('mri.tif',frame);
end

figure
imshow(mri(:,:,:,3),map);
figure
montage(mri,map)


figure
imshow(mri(:,:,:,4),map);

figure

mov=immovie(mri,map);
movie(mov);