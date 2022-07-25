function [x]=shano_decoder(tb,le,y)
    x=[];
    pos=1;
    max_pos=len(y);
    symbs=len(le);
   
    tbx=transpose(tb);
    while pos<=max_pos
        flag=0;
        for n=1:symbs
           if (pos+le(n)-1)<=max_pos
               if sum(y(pos:pos+le(n)-1)==tbx(1:le(n),n))==le(n)
                    x=[x;n-1];
                    pos=pos+le(n);
                    flag=1;
               end
           end
        end
        if flag==0
            break
        end
    end
    
end