clc
clear all
close all


cnt=1024;
N=4;
su=0
for k=1:cnt;
   n=rand(1,N);
   su=su+n*(n');
end

su=su/cnt