clc
clear all
close all


num=13;
durx=4;
a=1;
b=1;
c=0;
n=80;
d=zeros(1,n);
d(1)=a;
d(2)=b;
for cnt=3:n
    c=b;
    b=a+b;
    a=c;
    d(cnt)=b;
    %d(cnt)=ceil(rand(1)*100);
end

a=0;
b=1;
c=0;
n=80;
d1=zeros(1,n);
d1(1)=a;
d1(2)=b;
for cnt=3:n
    c=b;
    b=a+b+7;
    a=c;
    d1(cnt)=b;
end

%a=1;
%d1=zeros(1,n);
%for cnt=1:n
%    d1(cnt)=a;
    %d1(cnt)=ceil(rand(1)*64);
%    a=a*2; 
%end

a=1;
d2=zeros(1,n);
for cnt=1:n
    %d2(cnt)=ceil(rand(1)*36);
    d2(cnt)=a;
    a=a*13; 
end

a=1;
d3=zeros(1,n);
for cnt=1:n
    %d3(cnt)=ceil(rand(1)*7);
    d3(cnt)=a;
    a=a*7; 
end



Fs=44100;
note_dur=2;
N=n;
data=zeros(1,N*Fs*note_dur);



F_base=600;
df=1.1;


noted=zeros(1,2*n);
for cnt=1:n
    noted(2*cnt-1)=mod(d(cnt),num);
    noted(2*cnt)=mod(d(cnt),durx);
end


delay=0;
ptr=ceil(delay*Fs)+1;
for cnt=1:2:len(noted)
    dur=noted(cnt+1);
    if noted(cnt)~=0
    data(ptr:ptr+Fs*dur)=note_func(F_base*(df)^noted(cnt),F_base*(df)^(noted(cnt)+0.1),Fs,dur)+data(ptr:ptr+Fs*dur);
    end
    ptr=ptr+Fs*dur;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
noted=zeros(1,2*n);
for cnt=1:n
    noted(2*cnt-1)=mod(d1(cnt),num);
    noted(2*cnt)=mod(d1(cnt),durx);
end

F_base=500;
delay=0.2;
ptr=ceil(delay*Fs)+1;
for cnt=1:2:len(noted)
    dur=noted(cnt+1);
    if noted(cnt)~=0
    data(ptr:ptr+Fs*dur)=note_func(F_base*(df)^noted(cnt),F_base*(df)^(noted(cnt)+0.1),Fs,dur)+data(ptr:ptr+Fs*dur);
    end
    ptr=ptr+Fs*dur;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
noted=zeros(1,2*n);
for cnt=1:n
    noted(2*cnt-1)=mod(d2(cnt),num);
    noted(2*cnt)=mod(d2(cnt),durx);
end

F_base=400;
delay=0.4;
ptr=ceil(delay*Fs)+1;
for cnt=1:2:len(noted)
    dur=noted(cnt+1);
    if noted(cnt)~=0
    data(ptr:ptr+Fs*dur)=note_func(F_base*(df)^noted(cnt),F_base*(df)^(noted(cnt)+0.2),Fs,dur)+data(ptr:ptr+Fs*dur);
    end
    ptr=ptr+Fs*dur;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
noted=zeros(1,2*n);
for cnt=1:n
    noted(2*cnt-1)=mod(d3(cnt),num);
    noted(2*cnt)=mod(d3(cnt),durx);
end

F_base=300;
delay=0.6;
ptr=ceil(delay*Fs)+1;
for cnt=1:2:len(noted)
    dur=noted(cnt+1);
    if noted(cnt)~=0
    data(ptr:ptr+Fs*dur)=note_func(F_base*(df)^noted(cnt),F_base*(df)^(noted(cnt)+0.3),Fs,dur)+data(ptr:ptr+Fs*dur);
    end
    ptr=ptr+Fs*dur;
end

sound(data,70000)%,Fs);

%audiowrite('sound_18.wav',data,Fs);
