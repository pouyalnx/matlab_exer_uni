function [y] = hf_path(dep,pos)
y=pos;
point=find(dep(pos,:)==1);
for k=1:length(point)
    y=[y,hf_path(dep,point(1,k))];
end

end

