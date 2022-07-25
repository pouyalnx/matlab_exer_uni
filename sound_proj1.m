clc
clear all
close all

dist=2;
start_f=1500;
x=start_f:dist:start_f+dist*26;
Fs=48000;
T=0.2;
t=0:1/Fs:T-1/Fs;

snd=zeros(26,length(t));

for cnt=1:26
   snd(cnt,:)=cos(2*pi*t*x(cnt)); 
end

nul=cos(2*pi*t*1450);

data='saba i love you,saba you are very very beautiful smart nice,you are best';

for k=1:1
    for i=1:length(data)
        if data(i)~=' ' && data(i)~=','
        sound(snd(data(i)-'a'+1,:),Fs);
        else
        sound(nul,Fs);
        end
        pause(T)
    end
    pause(T)
end