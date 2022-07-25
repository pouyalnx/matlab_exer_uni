clc
clear all
close all

d=[]
for k=1:10
d=[d,(11-k)/(55)*(60000-12000)]
end


i=0.1;
p=60000;
I=[];
for k=1:10
 I=[I,p*i]
 p=p*(1+i);
end

cfbt=[];
val=29000;
for k=1:10
   cfbt=[cfbt,val];
   val=val-3000;
end

ti=cfbt-I-d;
tx=ti*0.3
for k=1:10
    if tx(k)<0
        tx(k)=0
    end
end

cfat=cfbt-tx-d-i-6000;

vs=[-60000,cfat];
vs(end)=vs(end)+12000;
roots(vs)

