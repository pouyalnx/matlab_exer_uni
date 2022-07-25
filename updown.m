function [y]=updown(L,M,x)
v=zeros(1,L*length(x));
v(1:L:end)=x;
y=v(1:M:end);
end