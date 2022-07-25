function [ out ] = Bandpass_Sinc( f_c1,f_c2,F_s,N )

n1=0;
n2=floor(N/2);
offset=1-n1;
f_cn1=f_c1/F_s;
f_cn2=f_c2/F_s;



o_cn1=2*pi*f_cn1;
o_cn2=2*pi*f_cn2;

AMP1=2*f_cn1;
AMP2=2*f_cn2;


for cnt=n1:n2
  if cnt==0
    out(offset+cnt)=AMP2-AMP1;
  else
    out(offset+cnt)=AMP2*sin(o_cn2*cnt)/(o_cn2*cnt)-AMP1*sin(o_cn1*cnt)/(o_cn1*cnt);
  end


end

