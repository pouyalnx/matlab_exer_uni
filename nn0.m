clc
close all
clear all
x=256*rand(20,20,3);

p_size=size(x);
p=zeros(p_size(1)*p_size(2),p_size(3));

cnt=1
for i=1:p_size(1);
    for j=1:p_size(2);
        p(cnt)=x(i,j);
        cnt=cnt+1;
    end
end


model=newsom(p',[5 5]);
train(model);
view(model)
image(x)


