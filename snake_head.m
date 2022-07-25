clc
clear all
close all

block_size=16;
block_cnt=32;

snake_color=234;
food_color=10;
back_color=40;


snake_head_color=snake_color;
snake_ring_eye_color=23;
snake_eye_color=46;
snake_nose_color=46;
snake_tail_color=snake_color;


head_box=ones(block_size,block_size)*snake_head_color;
head_box(1:2,8:12)=snake_ring_eye_color;
head_box(end-1:end,8:12)=snake_ring_eye_color;
head_box(1,8:11)=snake_eye_color;
head_box(end,8:11)=snake_eye_color;


head_box(6,1)=snake_nose_color;
head_box(10,1)=snake_nose_color;


tail_box=ones(block_size,block_size)*back_color;
tail_box(:,14:end)=snake_color;
tail_box(2:end-2,12:end-2)=snake_color;
tail_box(4:end-4,10:end-4)=snake_color;
tail_box(6:end-6,1:end-6)=snake_color;

image(tail_box);