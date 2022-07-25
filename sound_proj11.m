clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SIL=100;
A0=-23;
B0=-22;
C1=-21;
D1=-20;
E1=-19;
F1=-18;
G1=-17;
A1=-16;
B1=-15;
C2=-14;
D2=-13;
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
E4=2;
F4=3;
A5=4;

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
notes=[G3,1,C4,1,E4,1,SIL,1,F4,1,...
    G3,1,C3,1,E4,1,SIL,1,F4,1,...
    G3,1,C3,1,E4,1,SIL,1,F4,1,...
    G3,1,C3,1,E4,1,SIL,1,F4,1,...
    G3,1,C3,1,E4,1,SIL,1,F4,1,...
    G3,1,C3,1,E4,1,SIL,1,F4,1,...
    G3,1,C3,1,E4,1,SIL,1,F4,1,...
    G3,1,C3,1,E4,1,SIL,1,F4,1,...
    G3,1,C3,1,E4,1,SIL,1,F4,1,...
];



f_base=261.626;
f_delta=1.059463;
base_dur=1;
Fs=44100;
data=[];
for cnt=1:2:len(notes)
    fpos=notes(cnt);
    dur=notes(cnt+1)/4;
    if fpos~=SIL
    %sound(cos(2*pi*(f_base*f_delta*fpos)*(0:1/Fs:dur)),Fs);
    data=[data,chrip_s((f_base*f_delta^fpos),2*(f_base*f_delta^fpos),(0:1/Fs:dur))];
    else
    data=[data,cos(2*pi*(f_base*0)*(0:1/Fs:dur))+1];    
    end
    %pause(dur*0.8);
end
sound(data,Fs);
