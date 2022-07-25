clc
clear all
close all

filename='03 Be Silent.mp3'
[y,Fs] = audioread(filename);

filename='03 Be Silent1.wav'
audiowrite(filename,y(:,1),Fs);