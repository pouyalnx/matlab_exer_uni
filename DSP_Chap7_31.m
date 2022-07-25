clear all,close all,clc
F_s=1000;T=1/F_s;
N_FFT=8096;
om2_c=[.4,.6];
om1_c=.1;
if (length(om2_c)~=2)||(om2_c(1)>=om2_c(2))
  disp('Improper parametrers for BFP')  
end
alpha1=tan(om1_c/2);
alpha21=tan(om2_c(1)/2);
alpha22=tan(om2_c(2)/2);
num_LP=alpha1/(1+alpha1)*[1,1]
den_LP=[1,-(1-alpha1)/(1+alpha1)]
LNG=length(den_LP);
if length(num_LP)>LNG
  return;
elseif length(num_LP)<LNG
  num_LP=[num_LP,zeros(1,LNG-length(num_LP))];  
end
figure(1),freqz(num_LP,den_LP),title('H_{LP}(e^{j\omega})')
[H_LP,om1]=freqz(num_LP,den_LP,N_FFT);
figure(2),subplot(2,1,1),plot(om1,abs(H_LP)),grid
ylabel('|H_{LP}(e^{j\omega})|')
cnt=length(om1);CutoffAmp=1/sqrt(2);
while abs(H_LP(cnt))<CutoffAmp
  cnt=cnt-1;
end
if cnt>0
  om1_c_found=om1(cnt)  
end
num2_BS=zeros(1,LNG+1);den2_BS=num2_BS;
X=[alpha1,0,0,alpha1,0,0;...
   0,alpha1,0,0,alpha1,0;...
   0,0,alpha1,0,0,alpha1;...
   alpha1-1,0,0,alpha1+1,0,0;...
   0,alpha1-1,0,0,alpha1+1,0;...
   0,0,alpha1-1,0,0,alpha1+1]
Target=[1+alpha22*alpha21;...
        2*(alpha22*alpha21-1);...
        1+alpha22*alpha21;...
        1+alpha22-alpha21+alpha22*alpha21;...
        2*(alpha22*alpha21-1);...
        1-alpha22+alpha21+alpha22*alpha21]
A=X\Target
Param1=[A(1),A(2),A(3)];
Param2=[A(4),A(5),A(6)];
for cnt=1:LNG
  tmp1=[];
  tmp2=[];
  for cnt1=1:LNG-cnt
    if isempty(tmp1)
      tmp1=Param1;  
    else
      tmp1=conv(tmp1,Param1);  
    end
  end
  for cnt2=1:cnt-1
    if isempty(tmp2)
      tmp2=Param2;  
    else
      tmp2=conv(tmp2,Param2);  
    end
  end
  if isempty(tmp1)
    tmp1=1;  
  end
  if isempty(tmp2)
    tmp2=1;  
  end
  tmp12=conv(tmp1,tmp2);
  if length(tmp12)<LNG
    tmp12=[tmp12,zeros(1,LNG-length(tmp12))];
  end
  num2_BS=num2_BS+num_LP(cnt)*tmp12;
  den2_BS=den2_BS+den_LP(cnt)*tmp12;
end
num2_BS=1/den2_BS(1)*num2_BS
den2_BS=1/den2_BS(1)*den2_BS
figure(3),freqz(num2_BS,den2_BS),title('H_{BS}(e^{j\omega})')
[H2_BS,om2]=freqz(num2_BS,den2_BS,N_FFT);
figure(2),subplot(2,1,2),plot(om2,abs(H2_BS)),grid
ylabel('|H_{BS}(e^{j\omega})|')
xlabel('\omega')
om2_c_found=[];
cnt=1;
while abs(H2_BS(cnt))>CutoffAmp
  cnt=cnt+1;
end
if cnt<length(om2)
  om2_c_found(1)=om2(cnt);  
end
cnt2=length(om2);
while abs(H2_BS(cnt2))>CutoffAmp
  cnt2=cnt2-1;
end
if cnt2>cnt
  om2_c_found(2)=om2(cnt2);  
end
om2_c_found
