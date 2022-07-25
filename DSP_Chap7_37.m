clear all,close all,clc
F_s=400;
f_c1=120;
f_c2=130;
BW=f_c2-f_c1
f0=sqrt(f_c1*f_c2)
theta=f0/F_s*2*pi
r=1-(BW/F_s)*pi
if r<.9
  disp('The radius of poles should be >.9')
  return;
end
z=[exp(j*theta);exp(-j*theta)]
p=[r*exp(j*theta);r*exp(-j*theta)]
K=(1-2*r*cos(theta)+r^2)/(2-2*cos(theta))
[num_BS,den_BS]=zp2tf(z,p,K)
[H_BS,f]=freqz(num_BS,den_BS,[],F_s);
figure,plot(f,abs(H_BS)),grid
title(sprintf('Digital bandstop filter, f_c_1=%d, f_c_2=%d, BW=%d, F_s=%d',f_c1,f_c2,BW,F_s))
ylabel('|H(\omega)|')
xlabel('f (Hz)')
[MIN,MinLoc]=min(abs(H_BS))
f0_exact=f(MinLoc)
f2_c_exact=[];
f1_c_exact=[];
cnt=1;
while f(cnt)<f0_exact&&abs(H_BS(cnt))>1/sqrt(2)*max(abs(H_BS))
  cnt=cnt+1;
end
if cnt<MinLoc
  f1_c_exact=f(cnt)
end
cnt=length(H_BS);
while f(cnt)>f0_exact&&abs(H_BS(cnt))>1/sqrt(2)*max(abs(H_BS))
  cnt=cnt-1;
end
if cnt>MinLoc
  f2_c_exact=f(cnt)
end
if ~isempty(f1_c_exact)&&~isempty(f2_c_exact)
  BW_exact=f2_c_exact-f1_c_exact
end