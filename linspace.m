function [y] = linspace( x1,x2,l )
m=(x2-x1)/l;
y=zeros(1,l);
y(1)=x1;
for i=2:l
    y(i)=y(i-1)+m;
end
y=y(2:end);

end

