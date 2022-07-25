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
    re2,d4,la2,d1,sil,d1,la2,d1,sil,d1,la2,d4,...
re2,d3,sil,d1,re2,d4,la2,d1,sil,d1,la2,d1,sil,d1,la2,d4,re2,d4,la2,d4,...
la2_,d2,do3,d2,la2,d8,re3,d2,do3,d1,sil,d1,do3,d1,sil,d1,la2_,d1,sil,d1,...
la2_,d1,sil,d1,la2,d1,sil,d1,la2,d1,sil,d1,sol2,d2,fa2,d4,sol2,d2,do3,d2,...
la2,d8,re2,d2,do2,d2,re2,d2,re2_,d2,fa2,d2,re2_,d2,fa2,d2,sol2,d2,la2,d2,...
do3,d2,la2_,d2,la2,d2,sol2,d2,fa2,d2,re2_,d2,re2,d2,do2,d4,sol2,d1,sil,d1,...
sol2,d1,sil,d1,sol2,d4,la2,d4,la2_,d4,la2,d2,sol2,d2,fa2,d4,sol2,d4,la2,d4,...
sol2,d2,fa2,d2,re2_,d4,fa2,d4,sol2,d4,fa2,d2,re2_,d2,re2,d8,la2_,d2,la2,d1,...
sil,d1,la2,d1,sil,d1,sol2,d1,sil,d1,sol2,d1,sil,d1,fa2,d1,sil,d1,fa2,d1,...
sil,d1,re2_,d2,la2,d2,sol2,d1,sil,d1,sol2,d1,sil,d1,fa2,d1,sil,d1,fa2,d1,...
sil,d1,re2_,d1,sil,d1,re2_,d1,sil,d1,re2,d2,fa2,d2,sil,d2,fa2,d2,sol2,d2,...
la2,d8,re2,d4,la2,d1,sil,d1,la2,d1,sil,d1,la2,d4,re2,d3,sil,d1,re2,d4,...
la2,d1,sil,d1,la2,d1,sil,d1,la2,d4,re2,d4,la2,d4,la2_,d2,do3,d2,la2,d8,...
re3,d2,do3,d1,sil,d1,do3,d1,sil,d1,la2_,d1,sil,d1,la2_,d1,sil,d1,la2,d1,...
sil,d1,la2,d1,sil,d1,sol2,d2,fa2,d4,sol2,d2,do3,d2,la2,d8,re2,d2,do2,d2,...
re2,d2,re2_,d2,fa2,d2,re2_,d2,fa2,d2,sol2,d2,la2,d2,do3,d2,la2_,d2,la2,d2,...
sol2,d2,fa2,d2,re2_,d2,re2,d2,do2,d4,sol2,d1,sil,d1,sol2,d1,sil,d1,sol2,d4,...
la2,d4,la2_,d4,la2,d2,sol2,d2,fa2,d4,sol2,d4,la2,d4,sol2,d2,fa2,d2,re2_,d4,...
fa2,d4,sol2,d4,fa2,d2,re2_,d2,re2,d8,la2_,d2,la2,d1,sil,d1,la2,d1,sil,d1,...
sol2,d1,sil,d1,sol2,d1,sil,d1,fa2,d1,sil,d1,fa2,d1,sil,d1,re2_,d2,la2,d2,...
sol2,d1,sil,d1,sol2,d1,sil,d1,fa2,d1,sil,d1,fa2,d1,sil,d1,re2_,d1,sil,d1,...
re2_,d1,sil,d1,re2,d2,re2,d4,re2_,d2,fa2,d2,re2,d6,sil,d2,re2,d8,la2,d8,...
re2,d8,la2,d7,sil,d1,la2,d6,la2_,d2,do3,d6,la2_,d2,la2,d8,sil,d8,re3,d8,...
do3,d8,la2_,d8,la2,d8,sol2,d6,fa2,d2,sol2,d6,do3,d2,la2,d8,sil,d8,re2,d8,...
la2_,d8,la2,d8,sol2,d8,fa2,d6,re2_,d2,re2,d6,re2_,d2,do2,d8,sil,d8,fa2,d8,...
re2_,d8,re2,d6,sol2,d2,fa2,d8,re2_,d6,re2,d2,do2,d6,re2_,d2,re2,d4,la1,d4,...
la1_,d4,do2,d4,re2,d4,sol1,d4,do2,d4,sol1,d4,la1_,d4,re2,d4,la1,d4,re2,d4,...
sol1,d4,re2,d4,la1,d4,re2,d4,la1_,d4,re2,d4,do2,d4,re2,d4,re3,d32,do3,d6,...
re3_,d2,re3,d6,do3,d2,la2_,d6,re3,d2,do3,d6,la2_,d2,la2,d6,do3,d2,la2_,d6,...
la2,d2,sol2,d8,sil,d8,sol1,d6,la1,d2,la1_,d6,do2,d2,re2,d6,re2_,d2,do2,d6,...
re2,d2,re2_,d6,do2,d2,re2,d6,re2_,d2,re2,d8,sil,d8,do3,d8,si2,d6,re3,d2,...
do3,d16,la2_,d6,la2,d2,sol2,d6,la2_,d2,la2,d16,do3,d8,si2,d6,re3,d2,...
do3,d16,la2_,d6,la2,d2,sol2,d6,la2_,d2,la2,d16,fa2,d6,re2_,d2,fa2,d6,...
sol2,d2,la2,d16,la2_,d6,la2,d2,sol2,d6,fa2,d2,la2,d6,sol2,d2,fa2,d6,...
re2_,d2,sol2,d6,fa2,d2,re2_,d6,fa2,d2,sol2,d16,la2,d6,sol2,d2,fa2,d6,...
re2_,d2,sol2,d6,fa2,d2,re2_,d6,re2,d2,fa2,d6,re2_,d2,sol2,d6,re2_,d2,...
re2,d8,sil,d8
    ];


Fs=44100;
note_dur=2;
N=400;
data=zeros(1,N*Fs*note_dur);


ptr=1;
F_base=440
0;
df=1.1;
for cnt=1:2:len(noted)
    dur=noted(cnt+1)/16;
    if noted(cnt)~=SIL
    data(ptr:ptr+Fs*dur)=note_func(F_base*(df)^noted(cnt),F_base*(df)^(noted(cnt)+0.001),Fs,dur);
    end
    ptr=ptr+Fs*dur;
end

sound(data,Fs);

