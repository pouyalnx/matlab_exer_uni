function [wo] = nn_n_backward(d,y,x,n)
wo=(n*(y-d)*x);
end

