clc
clear all
close all

c1=rand(2,100);
c2=rand(2,100)+20;

w=[10;10];

epoch=5;
n=0.5;

for i=1:epoch
for j=1:length(c2)
    
y=nn_n_forward(c1(:,j),w,0);
w=w-nn_n_backward(1,y,c1(:,j),n);
c1(:,j)
y


y=nn_n_forward(c2(:,j),w,0);
c2(:,j)
y
w=w-nn_n_backward(-1,y,c2(:,j),n);

end
end

nn_n_forward(c1(:,8),w,0)
nn_n_forward(c2(:,7),w,0)

