close all
clear all
clc


den=[23,4]

%num=fliplr(den) %num=den(length(den):-1:1)
num=den(length(den):-2:1)


freqz(num,den)
figure
freqz(den,num)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

den=[23,4]
num=den(length(den):-2:1)

freqz(num,den)
figure
freqz(den,num)