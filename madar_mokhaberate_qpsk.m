clc
clear all
close all

%qpsk 4
a=[1,1,1,1];
theta=[45,90+45,180+45,270+45];
polar(deg2rad(theta),a,'*');

%qpsk 16
figure
teta=[];
r=[];
c2=1;
for c0=-1:0.5:1
    for c1=-1:0.5:1
        if c0~=0 && c1~=0
            loc=atan(c1/c0);
            if c0<0
                loc=loc+pi
            end
            teta(c2)=loc;
            r(c2)=sqrt(c0*c0+c1*c1);
        
            c2=c2+1;
        end
    end
end
polar(teta,r,'*');

%qpsk 64
figure
teta=[];
r=[];
c2=1;
for c0=-2:0.5:2
    for c1=-2:0.5:2
        if c0~=0 && c1~=0
            loc=atan(c1/c0);
            if c0<0
                loc=loc+pi
            end
            teta(c2)=loc;
            r(c2)=sqrt(c0*c0+c1*c1);
        
            c2=c2+1;
        end
    end
end
polar(teta,r,'*');
