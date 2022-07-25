clc
clear all
close all

Fs=44100;


tdur=30;

max_dur=5;
t=0;
f=[963,396,693,330,660,960,690];
d1=[];
while t<tdur
 s1=floor(rand(1,1)*1000);
 s22=floor(rand(1,1)*1000);

 dur=mod(s22,max_dur)+1;
 t=t+dur;
 fc=mod(s1,len(f))+1;
 d1=[d1,third_eye_note(f(fc),dur,Fs)];
end

f=[936,693,369,66,330,960,333];
t=0;
d2=[];
while t<tdur
 s1=floor(rand(1,1)*1000);
 s22=floor(rand(1,1)*1000); 
   
 dur=mod(s22,max_dur)+1;
 t=t+dur;
 fc=mod(s1,len(f))+1;
 d2=[d2,third_eye_note(f(fc),dur,Fs)];
end

minl=min(len(d1),len(d2));
d1=d1(1:minl);
d2=d2(1:minl);
%sound([d1+d2*0.1;d2+d1*0.1]);
audiowrite('sound_money3_44100_1.wav',[d1+d2],Fs);
%audiowrite('sound_money1x.wav',[d1+d2]);
