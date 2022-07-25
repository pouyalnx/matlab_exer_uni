clc
clear all
close all
filename='mri.tif'

I=imfinfo(filename);
num_of_frame=len(I);
f=uint8(zeros(I(1).Height,I(1).Width,I(1).BitDepth/8,num_of_frame));
for frame=1:num_of_frame
    if I(1).BitDepth==8
        if num_of_frame==1
           [f(:,:,:,frame),map]=imread(filename);
        else
            [f(:,:,:,frame),map]=imread(filename,frame);
        end
        imshow(f(:,:,:,frame),map)
    else
        if num_of_frame==1
           f(:,:,:,frame)=imread(filename);
        else
            f(:,:,:,frame)=imread(filename);
        end
        imshow(f(:,:,:,frame))        
    end
    pause(0.2)
end


fps=40;

if I(1).BitDepth==8
    mov=immovie(f,map);
else
    mov=immovie(f);      
end

movie(mov,num_of_frame,fps)