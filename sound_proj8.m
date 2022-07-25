clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SIL=100;
A0=-22;
B0=-21;
C1=-20;
D1=-19;
E1=-18;
F1=-17;
G1=-16;
A1=-15;
B1=-14;
C2=-13;
E2=-12;
F2=-11;
G2=-10;
A2=-9;
B2=-8;
C3=-7;
D3=-6;
E3=-5;
F3=-4;
G3=-3;
A3=-2;
B3=-1;
C4=0;
D4=1;

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
notes=[C1,d1,E1,d1,G1,d1,SIL,d1,G1,d1,SIL,d1,E1,d1,C1,d1,...
       D1,d1,SIL,d1,F1,d1,A1,d1,SIL,d1,F1,d1,D1,d1
];



f_base=261.626;
f_delta=1.059463;
base_dur=1;
Fs=44100;
data=[];
for cnt=1:2:len(notes)
    fpos=notes(cnt);
    dur=notes(cnt+1)/2;
    if fpos~=SIL
    %sound(cos(2*pi*(f_base*f_delta*fpos)*(0:1/Fs:dur)),Fs);
    data=[data,cos(2*pi*(f_base*f_delta^fpos)*(0:1/Fs:dur))+1];
    else
    data=[data,cos(2*pi*(f_base*0)*(0:1/Fs:dur))+1];    
    end
    %pause(dur*0.8);
end
sound(data,Fs);
