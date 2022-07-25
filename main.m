clc
clear all
close all

header_pilot=[1+1i;1-1i;-1+1i;-1-1i;1+1i;-1-1i;1-1i;-1+1i];
block_size=8;
block_count=4;
d=floor(2*rand(2*block_size*(block_count-2)));
tr=coder_v2(d,header_pilot,block_count,block_size);
















