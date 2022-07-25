close all
clear all
clc


num=[0,5,0,0,10]
den=num(length(num):-1:1)
freqz(num,den)


pause

close all


num=[0,5]
den=num(length(num):-1:1)
freqz(num,den)

pause

close all


num=[5]
den=num(length(num):-1:1)
freqz(num,den)

pause

close all


num=[1,1,1,1,1,1,1,1,1]            %in this mods will be num==den
                                   % result must be zero line  
                                   %but we see diffrent result in matlab
den=num(length(num):-1:1)
freqz(num,den)

pause

close all


num=[12,0,12,0,12,0,12]
den=num(length(num):-1:1)
freqz(num,den)
