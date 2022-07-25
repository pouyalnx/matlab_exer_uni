function [y]=downup(M,L , x)
v=x(1:M:end);
y=zeros(1,L*len(v));
y(1:L:end)=v;
end