function [tb,lt] = shano_init(data)


N=max(data)+1; % max data level

den=zeros(N,1);
for n=0:N-1
   den(n+1,1)=sum(find(data==n)); 
end

[dens,index]=sort(den);%will help to control

bits=ones(N,N)*-1;

grp=zeros(N+1,1);
grp(N)=1;


while sum(grp)~=N
   grp_pos=0;
   grp_min_dif=100000;
   
   grp_end=find(grp==1,1);
   grp_start=1;
   
   for k=1:N
      if grp(k)==1
          if grp_pos
             grp(grp_pos)=1;
             
             for n=grp_start:grp_pos
                bits(n,find(bits(n,:)==-1,1))=1;
             end
             for n=grp_pos+1:grp_end
                bits(n,find(bits(n,:)==-1,1))=0;
             end    
                 
          end
          grp_start=k+1;
          grp_end=find(grp(grp_start:end)==1,1)+grp_start-1;
      else
         dif=abs(sum(dens(k+1:grp_end))-sum(dens(grp_start:k)));
         if dif<grp_min_dif
            grp_pos=k;
            grp_min_dif=dif;
        end
      end
   end
end
    


tb=zeros(N,N);
lt=zeros(N,1);

for n=1:N
   pos=find(index==n);
   val=find(bits(pos,:)==-1,1)-1;
   
   if isempty(val)
       val=N;
   end
   lt(n)=val;
   
   tb(n,:)=bits(pos,:); 
end

end

