clc
clear all force
close all force
figure

mov=VideoWriter('vid.mp4','MPEG-4');
open(mov);

temp_color=uint8(zeros(128,128,3));


for frame=1:27
    tmp=imread('mri.tif',frame);
    
    imshow(tmp)
    drawnow
    temp_color(:,:,1)=tmp;
    temp_color(:,:,2)=tmp;
    temp_color(:,:,3)=tmp;
    writeVideo(mov,temp_color);
end

close(mov)

mov=VideoReader('vid.mp4');

i=1
while i~=mov.NumberOfFrames
    temp=readFrame(mov);
    imshow(temp);
    pause(1) 
    i=i+1;
end


