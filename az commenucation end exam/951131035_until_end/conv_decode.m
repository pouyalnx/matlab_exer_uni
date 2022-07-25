function [y]=conv_decode(tb,x)
l=len(x);
y=[];
state=1;

for n=1:l
   p0=sum((2*de2bi(tb(state,1),3)-1).*(2*x(n,:)-1));
   p1=sum((2*de2bi(tb(state,2),3)-1).*(2*x(n,:)-1));
   if p0>p1
       state=tb(state,1)+1;
       y=[y;0];
   else
       state=tb(state,2)+1;
       y=[y;1];
   end
end



end