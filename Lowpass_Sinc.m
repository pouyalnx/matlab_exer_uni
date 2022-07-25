function out=Lowpass_Sinc(f_c,F_s,N)
n1=0;
n2=floor(N/2);
offset=1-n1;
f_cn=f_c/F_s;
o_cn=2*pi*f_cn;
AMP=2*f_cn;
for cnt=n1:n2
  if cnt==0
    out(offset+cnt)=AMP;
  else
    out(offset+cnt)=AMP*sin(o_cn*cnt)/(o_cn*cnt);
  end
end

