function out=My_hamming(N)
n1=0;
n2=floor(N/2);
offset=1-n1;
for cnt=n1:n2
  out(offset+cnt)=0.54+0.46*cos(2*pi*cnt/N);
end

