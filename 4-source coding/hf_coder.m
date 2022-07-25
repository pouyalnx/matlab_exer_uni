function [c] = hf_coder(tb,l,d)
c=[];
for k=1:length(d)
    symb=d(k)+1;
    c=[c;tb(1:l(symb),symb)];
end

end

