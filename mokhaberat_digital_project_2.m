clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%transmiter
k=3;
n=5;

d=[1 0 1 0 0 0 1 0 1];

p=[1 1;1 0;1 1];
g=[[1 0 0],p(1,:);[0 1 0],p(2,:);[0 0 1],p(3,:)];


c=zeros(1,length(d)/k*5);

for i=0:length(d)/k-1
    c(i*n+1:(i+1)*n)=mod(d(i*k+1:(i+1)*k)*g,2);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%resiver
h=[p(:,1)',[1 0];p(:,2)',[0 1]];
N=1000;
error_cnt=0;
true_cnt=0;
detect_cnt=0;

de=d;

[D C]=size(g);



for i=1:N
    e=round(rand(1,length(c))*0.55); %zeros(1,length(c));% 
    cp=mod(c+e,2);
    
    det_flag=0;
    for k=0:length(cp)/length(h)-1
       cend=(cp(1+k*C:(k+1)*C)*h')';
       de(1+k*D:(k+1)*D)=cp(1+k*C:3+k*C);
       
       if cend~=0
           det_flag=1;
           for j=1:D
               if h(:,j)==cend
                 de(j+k*D)=mod(d(j)+1,2);  
               end
           end
       end
       
    end
    
    if det_flag
        detect_cnt=detect_cnt+1;
    end
    
    if de==d
        true_cnt=true_cnt+1;
    else
        error_cnt=error_cnt+1;
    end
    
end


%contain inforamtion
error_cnt
true_cnt
detect_cnt
