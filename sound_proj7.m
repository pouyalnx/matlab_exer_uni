clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sil=0;
sol1=1;
sol1_=2;
la1=3;
la1_=4;
si1=5;
do2=6;
do2_=7;
re2=8;
re2_=9;
mi2=10;
fa2=11;
fa2_=12;
sol2=13;
sol2_=14;
la2=15;
la2_=16;
si2=17;
do3=18;
do3_=19;
re3=20;
re3_=21;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d1=1;
d2=2;
d3=3;
d4=4;
d6=6;
d7=7;
d8=8;
d16=16;
d32=32;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
notes=[do2,d1,re2,d1,mi2,d1,sol1,d1,fa2,d1,mi2,d1,sil,d1,re2,d1,mi2,d1,do2,d1,sol1,d1,fa2,d1,sil,d1,re2,d1,mi2,d1,...
       do2,d1,re2,d1,do2,d1,mi2,d1,do2,d1,do2,d1,fa2,d1,do2,d1,sol1,d1,do2,d1,la1,d1
];



f_base=261.626;
f_delta=1.059463;
base_dur=1;
Fs=44100;
data=[];
for cnt=1:2:len(notes)
    fpos=notes(cnt);
    dur=notes(cnt+1)/4;
    %if fpos~=0
    %sound(cos(2*pi*(f_base*f_delta*fpos)*(0:1/Fs:dur)),Fs);
    data=[data,cos(2*pi*(f_base*(f_delta^fpos))*(0:1/Fs:dur))+1];
    %end
    %pause(dur*0.8);
end
sound(data,Fs);
