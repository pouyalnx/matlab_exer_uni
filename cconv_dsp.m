function [ y ] = cconv_dsp( x,h )

len=length(x)+length(h)-1;

y=zeros(1,len);

for gpv0=1:len
   for gpv1=1:length(x)
       
       gpv2=gpv0-gpv1;
       
       while gpv2>=length(h)
           gpv2=gpv2-length(h);
       end
       
       while gpv2<0
           gpv2=gpv2+length(h);
       end
       
       
      y(gpv0)=x(gpv1)*h(gpv2+1)+y(gpv0);
   end
end


end

