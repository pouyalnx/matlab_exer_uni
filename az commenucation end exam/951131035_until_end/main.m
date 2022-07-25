clc
clear all
close all

data=floor(rand(16,1)*4);
[tb,le]=shano_init(data);
b=shano_coder(tb,le,data);


tb_conv=conv_init();
c=conv_code(b);

%idea channel
Fs=100;
Ts=0.1;
Tup=0.05;
pulse=[ones((Fs*Tup),1);zeros(Fs*(Ts-Tup),1)];

chl0=kron(2*c(:,1)-1,pulse);
chl1=kron(2*c(:,2)-1,pulse);
chl2=kron(2*c(:,3)-1,pulse);


sample_dist=Ts*Fs;
sample_start=4;

err=[];
snr_s=0;
snr_step=0.05;
snr_e=3;
snr_v=snr_s:snr_step:snr_e;
for snr=snr_s:snr_step:snr_e
  n=rand(len(chl0),1)*snr;
  ch0=chl0+n;
  ch1=chl1+n;
  ch2=chl2+n;
  
  ch0_s=ch0(sample_start:sample_dist:end);
  ch1_s=ch1(sample_start:sample_dist:end);
  ch2_s=ch2(sample_start:sample_dist:end);
   
  br0=ch0_s;
  br0(br0>0)=1;
  br0(br0<0)=0;

  br1=ch1_s;
  br1(br1>0)=1;
  br1(br1<0)=0;  

  br2=ch2_s;
  br2(br2>0)=1;
  br2(br2<0)=0;
  
  res_code=[br0,br1,br2];
  res_bit=conv_decode(tb_conv,res_code);
  res_data=shano_decoder(tb,le,res_code);
  err=[err,1-sum(res_bit==b)/len(b)];
  
end

plot(snr_v,err);
