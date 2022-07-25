clc
clear all
close all

filename='10 Booty (feat. Pitbull).mp3'
[y,Fs] = audioread(filename);




filename='10 Booty (feat. Pitbull).wav'
audiowrite(filename,y(:,1),Fs);


randn('seed',sum(clock*200));
n=randn(size(y));
n(:,2)=0;
n=n*0.05*(max(y(:,1))-min(y(:,1)));

y_n=(n(:,1)+y(:,1));


filename='10 Booty (feat. Pitbull)_noise.wav'
audiowrite(filename,y_n,Fs);
