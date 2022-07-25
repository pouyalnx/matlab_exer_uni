function [tb,ln,c] = hf_unpack(b,sym_max)
   
    N_l=b(1)+b(2)*256;
    
    head=[];
    for k=1:(N_l/8)
        head=[head;(de2bi(b(2+k),8)')];
    end
   
    tb=ones(sym_max,sym_max)*-1;
    ln=zeros(1,sym_max);
    pos=1;
    sym=1;
    
    while sym<=sym_max
        l=bi2de(head(pos:pos+8-1)');
        pos=pos+8;
        tb(1:l,sym)=head(pos:pos+l-1);
        ln(sym)=l;
        pos=pos+l;
        sym=sym+1;
    end
    
    
    N_n=b(N_l/8+3)+256*b(N_l/8+4)+256*256*b(N_l/8+5)+256*256*256*b(N_l/8+6);
    cnt=1;
    c=[];
    pos=N_l/8+7;
    
   
    while cnt<floor(N_n/8)*8
       c=[c;(de2bi(b(pos),8)')];
       cnt=cnt+8;
       pos=pos+1;
    end
    
    if cnt~=floor(N_n/8)*8
        c=[c;(de2bi(b(pos),8)')];
        c=c(1:N_n);
    end
end

