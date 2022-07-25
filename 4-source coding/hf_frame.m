function [f] = hf_frame(tb,l)
f=[];
N=length(l);

for k=1:N
    f=[f;transpose(de2bi(l(k),8));tb(1:l(k),k)];
end



N=length(f);
if floor(N/8)*8~=N
   f=[f;zeros(8-(N-floor(N/8)*8),1)];
end

f=[transpose(de2bi(length(f),16));f];

end

