function out=My_Rectangle(N)
n1=0;
n2=floor(N/2);
offset=1-n1;
for cnt=n1:n2
  out(offset+cnt)=1;
end

