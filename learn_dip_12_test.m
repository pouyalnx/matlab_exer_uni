clc
clear all
close all

vid=VideoWriter('vid1.mp4','MPEG-4');
open(vid)


filename='mri.tif';
I_inf=imfinfo(filename);

for frame=1:len(I_inf);
    
    if len(I_inf)==1
       tmp=imread(filename);
    else
        tmp=imread(filename,frame);       
    end
    
    
    if I_inf(1).BitDepth==8
    tmps=uint8(zeros([size(tmp),3])); 
    tmps(:,:,1)=tmp;
    tmps(:,:,2)=tmp;
    tmps(:,:,3)=tmp;    
    else
    tmps=tmp;
    end
    writeVideo(vid,tmps);
end

close(vid);

vid=VideoReader('vid2.mp4');
fms=read(vid);
montage(fms);
fm=immovie(fms);
figure
movie(fm,10,1);

