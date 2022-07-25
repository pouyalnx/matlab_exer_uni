function [y] = shano_coder(tb,le,data)
y=[];
for n=1:len(data)
    pos=data(n)+1;
    y=[y;transpose(tb(pos,1:le(pos)))];
end

end

