clc
clear all
close all

A=input('plz enter matrix')
[m,n]=size(A);

for i=1:m
    for j=1:n
        if(mod(A(i,j),2)==1);
            A(i,j)=-1;
        else
            A(i,j)=1;
        end
    end
end

A