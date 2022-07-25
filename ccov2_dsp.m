function [ y ] = cconv2_dsp( x,h )

n1=length(x);
n2=length(h);

y=zeros(1,n2);

for gp0=1:n2
    y(gp0)=0;
    gp2=gp0;
    for gp1=1:n1
        y(gp0)=x(gp1)*h(gp2)+y(gp0);
        gp2=gp2-1;
        if(gp2<=0)
            gp2=n2;
        end
    end
end

end

