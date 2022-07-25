function [data] = chrip_sq(fs,fe,t)
f=(fe-fs)*sqrt(t/max(t))+fs;
data=cos(2*pi*f.*t);
end

