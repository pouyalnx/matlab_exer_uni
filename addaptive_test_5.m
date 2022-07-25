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




N=length(y_s_1);
y_s_2=zeros(1,N);
h2_a=zeros(1,256);

b=fir1(200,0.30);
a=[1,zeros(1,length(b)-1)];


for cnt2=1:2

for cnt=1:256:N-256
h1_a=y_s_1(cnt:cnt+256);



for cnt1=1:256-5
gpv0=h1_a(cnt1:cnt1+5);
gpv1=sort(gpv0);    
h2_a(cnt1)=gpv1(4);
end

y_s_2(cnt:cnt+255)=h2_a;
end
y_s_2=filter(b,a,y_s_2);
y_s_1=y_s_2;

end

%for cnt=1:256:N-256
%h1=fft(y_s_1(cnt:cnt+256),256);
%h1_a=abs(h1);
%h1_p=h1./h1_a;


%for cnt1=1:256-3
%gpv0=h1_a(cnt1:cnt1+3);
%gpv1=mean(gpv0);    
%h2_a(cnt1)=gpv1;
%end


%y_s_2(cnt:cnt+255)=ifft(h2_a.*h1_p);
%end
%y_s_2=real(y_s_2);

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

%mu = 0.08;            % LMS step size.
%ha = adaptfilt.lms(16,mu);
%[x,e]=filter(ha,y_s_1,y_n);

sound(y_s_2,Fs)

