function [c] = conv_code(b)
buff=[0,0,0];
c=[];
for k=1:len(b)
    buff=[b(k),buff(1:2)];
    
    b1=mod(buff(1)+buff(2)+buff(3),2);
    b2=mod(buff(3)+buff(2),2);
    b3=mod(buff(1)+buff(3),2);
    
    c=[c;b3,b2,b1];
end

end

