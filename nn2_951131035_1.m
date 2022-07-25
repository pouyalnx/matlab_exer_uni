clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dist=2

c1_d=rand(2,100);
c1_u=rand(2,100)+dist;


c2_u=rand(2,100)+dist*([1 0;0 0]*ones(2,100));
c2_d=rand(2,100)+dist*([0 0;0 1]*ones(2,100));

scatter(c1_d(1,:),c1_d(2,:),'b')
hold
scatter(c2_d(1,:),c2_d(2,:),'g')
scatter(c1_u(1,:),c1_u(2,:),'b')
scatter(c2_u(1,:),c2_u(2,:),'g')


d_c1=1;
d_c2=-1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
epochs=5;
n=0.05;

