clc
clear all
close all

filename='07 - A Hero Comes Home.mp3'
[y,Fs] = audioread(filename);

filename='07 - A Hero Comes Home1.wav'
audiowrite(filename,y(:,1),Fs);