clc
clear all
close all


Fs=44100;
dur=30;
max_dur=1;
d1=third_eye_note_en(Fs,dur,max_dur,[963,396,666]);
d2=third_eye_note_en(Fs,dur,max_dur,[936,693,333]);
d3=third_eye_note_en(Fs,dur,max_dur*5,[10,100,200,300])*0.2;
d4=third_eye_note_en(Fs,dur,max_dur*5,[2000,3000,1000])*0.1;





minl=min([len(d1),len(d2),len(d3),len(d4)]);
d1=d1(1:minl);
d2=d2(1:minl);
d3=d3(1:minl);
d4=d4(1:minl);


audiowrite('sound_money5.wav',[d1+d2+d3+d4],Fs);