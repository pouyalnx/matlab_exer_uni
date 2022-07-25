function [Hejw,ang] = freq_z(b, a)


ang=0:0.05:2*pi;
ejw_base=exp(-j*ang);
n=length(b)+length(a)-1;

b=[b,zeros(1,n-length(b))];
a=[a,zeros(1,n-length(a))];

ejw=ones(1,length(ejw_base));

num=zeros(1,length(ejw_base));
den=zeros(1,length(ejw_base));

for i=1:n
   num=b(i)*ejw+num;
   den=a(i)*ejw+den; 
    ejw=ejw.*ejw_base;
end

Hejw=num./den;

plot(ang*180/pi,abs(Hejw))


end

