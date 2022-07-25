clc
clear all
close all

%note data
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sil=SIL;
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
%
noted=[
        1,1,SIL,1,2,1,4,1,SIL,1,1,1,SIL,1,2,1,SIL,1,4,1,SIL,1,...
        1,1,SIL,1,2,1,4,1,SIL,1,1,1,SIL,1,2,1,SIL,1,4,1,SIL,1,...
    ];


Fs=44100;
note_dur=2;
N=400;
data=zeros(1,N*Fs*note_dur);


ptr=1;
F_base=440;
df=1.1;
for cnt=1:2:len(noted)
    dur=noted(cnt+1)/4;
    if noted(cnt)~=SIL
    data(ptr:ptr+Fs*dur)=note_func(F_base*(df)^noted(cnt),F_base*(df)^(noted(cnt)+0.001),Fs,dur);
    end
    ptr=ptr+Fs*dur;
end

sound(data,Fs);

