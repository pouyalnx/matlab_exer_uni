clc
clear all
close all

filename='07 - A Hero Comes Home.mp3'
[y,Fs] = audioread(filename);


randn('seed',sum(clock*200));
n=randn(size(y));
n(:,2)=0;
n=n*0.02*(max(y(:,1))-min(y(:,1)));


y_n=(n(:,1)+y(:,1))';
y_x=y(:,1)';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%b=fir1(200,[0.0002,0.30]);
%a=[1,zeros(1,length(b)-1)];
y_s_1=y_n;%filter(b,a,y_n);

h1=fft(y_s_1);
th_h1=max(abs(h1))*0.005;
fnd=find(abs(h1)<th_h1);
h1(fnd)=0;
h1=(h1.*1.2)/4;
y_s_1=ifft(h1);

%y_s_1=ifft(fft(y_s_1).^1.2)/512;


%y_s_1=y_s_1.^1.05;
y_s_1=real(y_s_1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%mx=mean(y_x);
%my=mean(y_s_1);

%varx=mean((y_x-mx).^2);
%vary=mean((y_s_1-my).^2);


%covxy=mean(abs((y_x-mx).*(y_s_1-my)));

%g=covxy/sqrt(varx*vary);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Y_x=abs(fft(y_x));
%Y_s_1=abs(fft(y_s_1));
%f=0:2/length(y_x):2-2/length(y_x);

%plot(f,Y_x,f,Y_s_1);
%mX=mean(Y_x);
%mY=mean(Y_s_1);

%varX=mean((Y_x-mX).^2);
%varY=mean((Y_s_1-mY).^2);


%covXY=mean(abs((Y_x-mX).*(Y_s_1-mY)));

%G=covXY/sqrt(varX*varY);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mu = 0.08;            % LMS step size.
ha = adaptfilt.lms(16,mu);
[x,e]=filter(ha,y_s_1,y_n);

sound(x,Fs)

