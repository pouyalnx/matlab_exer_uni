clear all,close all,clc

F_s=8000;
f_p_v=[1000 3000];
Delta_f_v=[200 600];
StopAtten_v=[-50 -40];


StopAtten=min(StopAtten_v);
Deltafn=Delta_f_v(find(StopAtten))/F_s;


FIR_name='Rect';
FIR_name=strvcat(FIR_name,'Hanning');
FIR_name=strvcat(FIR_name,'Hamming');
FIR_name=strvcat(FIR_name,'Blackman');
Attens=[-21,-44,-53,-74];      
Deltas=[0.9,3.1,3.3,5.5];
N_FFT=8*1024;
if abs(StopAtten)>abs(Attens(end))
  disp('A_s>74 dB')
  return;
end
for Window_Index=1:length(Attens)
  if abs(StopAtten)<=abs(Attens(Window_Index))
     break;
  end
end
WindowName=FIR_name(Window_Index,:)
N=ceil(Deltas(Window_Index)/Deltafn);
if floor(N/2)*2==N
  N=N+1;
end

Right=floor(N/2);
n=-Right:Right;
f_c1=f_p_v(1)-Delta_f_v(1)/2;
f_c2=f_p_v(2)+Delta_f_v(2)/2;

hl_D=Bandpass_Sinc(f_c1,f_c2,F_s,N);
switch(Window_Index)
    case 1;  
      w=My_Rectangle(N);
    case 2;  
      w=My_hanning(N);
    case 3;  
      w=My_hamming(N);
    case 4;  
      w=My_Blackman(N);
end
hl=w.*hl_D;


%Change mode
hl=[hl(end:-1:2),hl];
%hl=[hl(end:-1:1),hl];
%hl=[-hl(end:-1:1),hl];
%hl=[-hl(end:-1:1),0,hl];

N=length(hl);
figure,stem(hl)
grid
xlabel('n')
ylabel('hl(n)')
Hl=fft(hl,N_FFT);
f=F_s/length(Hl)*[0:length(Hl)-1];
Hl=Hl(1:N_FFT/2);
f=f(1:N_FFT/2);
figure,plot(f,abs(Hl))
grid
xlabel('f (Hz)')
ylabel('|Hl(\omega)|')
title(sprintf(...
'Frequency response of FIR Lowpass filter (Window: %s, N=%d)'...
,WindowName,N))
H_0=abs(Hl(1));
CuttoffAmp=1/sqrt(2)*H_0
cnt=length(Hl);
while cnt>0&&abs(Hl(cnt))<CuttoffAmp
  cnt=cnt-1;  
end
if cnt>0
  fc_computed=f(cnt)
  fcy=0:0.1:CuttoffAmp;
  fcx=fc_computed*ones(1,length(fcy));
  hold on
  plot(fcx,fcy,'r.')
  hold off
end
StopAmp=10^(StopAtten/20)
cnt=1;
while cnt<=length(Hl)&&abs(Hl(cnt))>StopAmp
  cnt=cnt+1;  
end
if cnt<=length(Hl)
  fs_computed=f(cnt)
  fsy=0:0.1:StopAmp;
  fsx=fs_computed*ones(1,length(fsy));
  hold on
  plot(fsx,fsy,'g.')
  hold off
end
if (~isempty(fc_computed))&&(~isempty(fs_computed))
  Deltaf_computed=fs_computed-fc_computed
end
figure,subplot(3,1,1)
plot(f,abs(Hl))
ylabel('|H|')
subplot(3,1,2)
plot(f,angle(Hl))
title('Phase(H) without using unwrap')
ylabel('rad')
subplot(3,1,3)
plot(f,unwrap(angle(Hl)))
title('Phase(H) using unwrap')
xlabel('f')
ylabel('rad')
num=real(hl);
den=[1,zeros(1,length(num)-1)];
[z,p,k]=tf2zpk(num,den)
fnd=find(abs(z)>20);
if ~isempty(fnd)
  fnd
  z(fnd)
  disp(['The zero with amplitude greater than 20 is excluded from plot:'...
      ,num2str(z(fnd))])  
  z(fnd)=[];
  p(fnd)=[];
end
figure,zplane(z,p)
MinR=min(real(z));
MaxR=max(real(z));
MinI=min(imag(z));
MaxI=max(imag(z));
Min=min(MinR,MinI);
Max=max(MaxR,MaxI);
axis([Min,Max,Min,Max])
