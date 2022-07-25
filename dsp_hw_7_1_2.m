clc;clear all;close all;

Fs=20;
bp_edge_freq=[4.5 5.5];
sb_edge_freq=[3.5 6.5];
As=[-20 -20];

delta_f=abs(bp_edge_freq-sb_edge_freq);


As_s=max(abs(As));
pos=find(abs(As)==As_s);
pos=pos(1);

%filter_information
As_filter=[21 44 53 74];
N_factor_filter=[0.9 3.1 3.3 5.5];

cnt=1;
while(As_s>As_filter(cnt) && cnt<length(As_filter))
    cnt=cnt+1;
end

N=ceil(N_factor_filter(cnt)*Fs/delta_f(pos));


if(and(N,1)==1)
    N=N+1
end


switch cnt
    case 1 %RECTANGLE
        w=ones(1,N);
    case 2 
        w=hanning(N)';
    case 3
        w=hamming(N)';
    case 4
        w=blackman(N)';
end        

l=-floor(N/2):floor(N/2);
f2=(bp_edge_freq(2)+delta_f(pos)/2)/Fs;
f1=(bp_edge_freq(1)-delta_f(pos)/2)/Fs;
hd=2*f2*sinc(2*f2*l)-2*f1*sinc(2*f1*l);
h=w.*hd;


N_fft=4096;
H=fft(h,N_fft);
H=H(1:floor(length(H)/2));
f=(0:1/length(H):1-1/length(H))*Fs/2;
plot(f,abs(H));

%find cutoffs

cut_off=max(abs(H))/sqrt(2);

pos_cut_off_1=1;
while(cut_off>abs(H(pos_cut_off_1))  && pos_cut_off_1<length(H))
    pos_cut_off_1=pos_cut_off_1+1;
end

pos_cut_off_2=length(H);
while(cut_off>abs(H(pos_cut_off_2))  && pos_cut_off_2>1)
    pos_cut_off_2=pos_cut_off_2-1;
end

cut=zeros(1,length(H));
cut(pos_cut_off_1)=cut_off;
cut(pos_cut_off_2)=cut_off;
hold 
plot(f,cut,'red');
xlabel('freq 0-fs/2');
ylabel('freq respones ampliltude')





