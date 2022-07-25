clc;clear all;close all;

N_FFT=4096;
b=[1 1 1]*1/3;



H=abs(fft(b,N_FFT));
H=H(1:floor(N_FFT/2));

H_wp=max(H)*0.9;
H_ws=max(H)*0.1;
H_wc=max(H)/sqrt(2);

wp=zeros(1,2);
wc=zeros(1,2);
ws=zeros(1,2);

len=floor(N_FFT/2);


cnt=1;
while(cnt <len && H(cnt)>H_wp)
    cnt=cnt+1;
end
wp(1)=cnt;
 



cnt=1;
while(cnt <len && H(cnt)>H_ws)
    cnt=cnt+1;
end
ws(1)=cnt;
while(cnt <len && H(cnt)<H_ws)
    cnt=cnt+1;
end    
ws(2)=cnt;  

    
cnt=1;
while(cnt <len && H(cnt)>H_wc)
    cnt=cnt+1;
end
wc(1)=cnt;
   
    
    
f=[0:len-1]/len;

plot(f,H);
hold;
line(wp/len,[H_wp,H_wp]);
line(ws/len,[H_ws,H_ws]);
line(wc/len,[H_wc,H_wc]);
