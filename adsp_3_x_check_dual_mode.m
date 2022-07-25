clear all
close all
clc

N_in=32
x=random('unid',100,1,N_in);


L_end=25;
M_end=25;
error=0.0001;
for L=2:L_end;
    for M=2:M_end;
    y1=updown(L,M,x);
    y2=downup(M,L,x);
    mend=min(len(y1),len(y2));
    fnd=find(abs(y1(1:mend)-y2(1:mend))>error);
    '---------'
    L
    M
    fnd
    
    end
end

