close all
clear all
clc


den=[0,5,0,0,10]
num=den(length(den):-1:1)
freqz(num,den)


pause

close all



den=[3,5,2,2,10]
num=den(length(den):-1:1)
freqz(num,den)


pause

close all




den=[0,5]
num=den(length(den):-1:1)
freqz(num,den)


pause

close all



den=[8,1,8,1,8,1]
num=den(length(den):-1:1)
freqz(num,den)



pause

close all



den=[0,5,0,0,10]
num=den(length(den):-1:1)
freqz(num,den)
