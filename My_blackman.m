function out=My_blackman(N)
n1=0;
n2=floor(N/2);
offset=1-n1;
for cnt=n1:n2
  out(offset+cnt)=0.42+0.5*cos(2*pi*cnt/(N-1))+0.08*cos(4*pi*cnt/(N-1));
end

