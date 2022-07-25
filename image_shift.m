clc
clear all
close all

org_i=imread('1.jpg');
wind=zeros([1200,1200,3],'uint8');


dx=0;
dy=0;
wind(1+dx:580+dx,1+dy:870+dy,:)=wind(1+dx:580+dx,1+dy:870+dy,:)+org_i;


dx=1;
dy=10;
wind(1+dx:580+dx,1+dy:870+dy,:)=wind(1+dx:580+dx,1+dy:870+dy,:)+org_i;

dx=20;
dy=20;
%wind(1+dx:580+dx,1+dy:870+dy,:)=wind(1+dx:580+dx,1+dy:870+dy,:)+org_i;

dx=0;
dy=1;
wind(1+dx:580+dx,1+dy:870+dy,:)=wind(1+dx:580+dx,1+dy:870+dy,:)+org_i;

image(wind);
