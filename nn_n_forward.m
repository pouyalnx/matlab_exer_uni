function [y] = nn_n_forward(x,w,b)
v=sum(w.*x)+b;
if v>=0
    y=1;
else
    y=-1;
end
end

