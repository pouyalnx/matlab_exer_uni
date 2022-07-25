clc
clear all
close all


%d=[12,23,124,53,100,12,12,128,1,128,1,128];
d=rand(16);

Ns=32;

datal=[];
for cnt=1:len(d)
    datal=[datal,ones(1,Ns)*d(cnt)];
end

figure
plot(datal);

datai=[];
for cnt=1:len(d)-1
    m=(d(cnt+1)-d(cnt))/Ns;
    datai=[datai,m*(1:Ns)+d(cnt)];
end
hold
%figure
plot(datai);


dataj=[];
for cnt=1:len(d)-1
    dataj=[dataj,zeros(1,ceil(Ns/2)),m*(1:ceil(Ns/2))+d(cnt)];
end
%hold
%figure
plot(dataj);


datak=[];
for cnt=1:len(d)
    datak=[datak,zeros(1,ceil(Ns/2)),ones(1,ceil(Ns/2))*d(cnt)];
end
%hold
%figure
plot(datak);

f=[0,0.002,1];
m=[1,0,0];
b=fir2(64,f,m);

datalf=filter(b,1,datal);
dataif=filter(b,1,datai);
datajf=filter(b,1,dataj);
datajk=filter(b,1,datak);


figure
plot(datalf/max(datalf));
hold
%figure
plot(dataif/max(dataif));

%hold
%figure
plot(datajf/max(datajf));


%hold
%figure
plot(datajk/max(datajf));

