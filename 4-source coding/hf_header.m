function [table,len,hs,h] = hf_header(data,N)

hs=zeros(1,N);
for k=1:N
   hs(k)=length(find(data==(k-1))); 
end

depend=zeros(N,N);
bits=-1*ones(N,N);
hst=hs/sum(hs);

max_val=1000;

while sum(hst==max_val)~=(N-1)
    [minval,pos]=sort(hst);
    loc=sort(pos(1:2));
 
    pos=hf_path(depend,loc(1));
    for k=1:length(pos)
       bits(find(bits(:,pos(k))==-1,1),pos(k))=1;
    end
 
    pos=hf_path(depend,loc(2));
    for k=1:length(pos)
       bits(find(bits(:,pos(k))==-1,1),pos(k))=0;
    end

    hst(loc(1))=sum(minval(1:2));
    hst(loc(2))=max_val;%as remove    
    depend(loc(1),loc(2))=1;
    depend(loc(2),loc(1))=0;
    
    hst
end
    table=bits;
    len=zeros(1,N);
    for k=1:N
        len(k)=find(bits(:,k)==-1,1);
        if(len(k)==[])
            len(k)=N;
        end
        len(k)=len(k)-1;
        
        table(1:len(k),k)=flipud(table(1:len(k),k));
    end
    depend
    table
    h=hf_frame(table,len);
end



