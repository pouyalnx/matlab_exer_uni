clc
clear all
close all



filename='07 - A Hero Comes Home.mp3'
[y,Fs] = audioread(filename);



randn('seed',sum(clock*200));
n=randn(size(y));

%n(:,2)=0;
n=n*0.05*(max(y(:,1))-min(y(:,1)));
y_n=n+y;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%finding cutoff
%h1=abs(fft(y(:,1)));
%h1=h1(1:length(h1)/2);
%cnt=0:1/length(h1):1-1/length(h1);

%plot(cnt,h1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

b=fir1(255,0.4);
a=[1,zeros(1,length(b)-1)];
y_s_1=filter(b,a,y_n);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mu = 0.04;            % LMS step size.
ha = adaptfilt.lms(8,mu);
[x,e]=filter(ha,y_n(:,2),y_n(:,1));
[x2,e]=filter(ha,x,y_n(:,1));


sound(x2,Fs);







