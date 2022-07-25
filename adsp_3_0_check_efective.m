clear all
close all
clc

[x,f]=audioread('10 Booty (feat. Pitbull).wav');

M=4
n_filter=3
f_filter=[0,0.25,1]
a_filter=[1,1,0]
h_filter=fir2(n_filter,f_filter,a_filter);


y=zeros(1,len(x)+len(h_filter));
for i=n_filter+1:M:len(x)
    for j=1:n_filter
        y(i)=y(i)+h_filter(j)*x(i-j);
    end
end

sound(y,f/M)
