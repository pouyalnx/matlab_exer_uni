clc
clear all
close all

d=input('enter day: ');
m=input('enter mounth: ');

Mt=[31,31,31,31,31,31,30,30,30,30,30,30];

for k=1:m-1
    d=d+Mt(k);
end

d