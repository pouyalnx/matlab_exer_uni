clc
clear all
close all

N=4;

W=eye(N,N);

Ht=rand(4,4);

O =[1 1 0 0;
    1 1 1 0;
    0 1 1 1;
    0 0 1 1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%our fft unit
F=zeros(4,4);
base=exp(-2*pi*i/4);
for i=1:4
    for j=1:4
        F(i,j)=power(base,(i-1)*(j-1));
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


err_row=[0];
%TEST
cnt=1024;
 for cn=1:cnt
     s=floor(rand(1,N)*2)';
     n=(rand(1,N)*0.1)';
     y=F*W*Ht*(F')*s+F*W*n;
     err_row(end+1)=sum((y-s).^2);
 end




plot(abs(err_row))

