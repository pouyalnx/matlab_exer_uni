clc
clear all
close all


data=imread('1.jpg');
data1=data;

red=zeros(1,256);
blue=zeros(1,256);
green=zeros(1,256);


siz=size(data);
for cnt0=1:siz(1)
    for cnt1=1:siz(2)
        red(data(cnt0,cnt1,1)+1)=red(data(cnt0,cnt1,1)+1)+1;
        blue(data(cnt0,cnt1,2)+1)=blue(data(cnt0,cnt1,2)+1)+1;
        green(data(cnt0,cnt1,3)+1)=green(data(cnt0,cnt1,3)+1)+1;
    end
end

red=red/(siz(1)*siz(2));
blue=blue/(siz(1)*siz(2));
green=green/(siz(1)*siz(2));

steps=1;
level=32;
r_r=0:255/level:255;
r_g=r_r;
r_b=r_r;


t_r=r_r;
t_g=r_r;
t_b=r_r;



for cnt=1:steps
   for k=1:level 
    t_r(k)=(r_r(k)+r_r(k+1))/2;
    t_g(k)=(r_g(k)+r_g(k+1))/2;
    t_b(k)=(r_b(k)+r_b(k+1))/2;
   end
   
   for k=1:level
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      start_v=int32(t_r(k))+1;
      end_v=int32(t_r(k+1))+1;
       
      num=sum((double(start_v):double(end_v)).*red(start_v:end_v));
      den=sum(red(start_v:end_v));
      r_r(k)=num/den;
      
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      start_v=int32(t_g(k))+1;
      end_v=int32(t_g(k+1))+1;
       
      num=sum((double(start_v):double(end_v)).*green(start_v:end_v));
      den=sum(green(start_v:end_v));
      r_g(k)=num/den;
      
      
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      start_v=int32(t_b(k))+1;
      end_v=int32(t_b(k+1))+1;
       
      num=sum((double(start_v):double(end_v)).*blue(start_v:end_v));
      den=sum(blue(start_v:end_v));
      r_b(k)=num/den;
      
   end
   
   
end


siz=size(data);
for cnt0=1:siz(1)
    for cnt1=1:siz(2)
        
        for k=1:length(r_r)
           if(data(cnt0,cnt1,1)<=t_r(k))
               data1(cnt0,cnt1,1)=int8(r_r(k));
           break
           end
        end
        
        for k=1:length(r_g)
           if(data(cnt0,cnt1,2)<=t_g(k))
               data1(cnt0,cnt1,2)=int8(r_g(k));
           break
           end
        end
        
        for k=1:length(r_b)
           if(data(cnt0,cnt1,3)<=t_b(k))
               data1(cnt0,cnt1,3)=int8(r_b(k));
           break
           end
        end

    end
end

imshow(data)
figure
imshow(data1)


