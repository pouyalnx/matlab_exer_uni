function [data] = chrip_s(fs,fe,t)
f=(fe-fs)*(t/max(t)).^2+fs;
data=cos(2*pi*f.*t);
end

