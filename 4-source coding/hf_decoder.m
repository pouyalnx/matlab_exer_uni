function [d] = hf_decoder(tb,l,c)
d=[];
pos=1;
N=length(c);
cp=length(l);
pred=zeros(1,cp);


while pos<N
    for k=1:cp
        if (pos+l(k)-1)<=N
        pred(k)=sum(c(pos:pos+l(k)-1)==tb(1:l(k),k))/l(k);
        else
        pred(k)=0;
        end
    end
    k=find(max(pred)==pred,1);
    pos=pos+l(k);
    d=[d,k-1];
end

end



