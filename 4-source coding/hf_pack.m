function [b] = hf_pack(h,c)
 
 p=[h;transpose(de2bi(length(c),32));c];
 b=[];
 N=length(p);

 N_e=floor(N/8)*8;
 for n=1:8:N_e-1
    b=[b;bi2de(p(n:n+8-1)')]; 
 end
 

 
 if N_e~=N
    b=[b;bi2de(p(N_e:N)')]; 
 end
     
end

