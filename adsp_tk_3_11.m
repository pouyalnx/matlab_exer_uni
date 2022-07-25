clear all
close all
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
F_s=1000
n_f=4
f=random('unid',F_s/2,1,n_f)/F_s;


N_s=32;
n=0:N_s-1;
x=zeros(1,N_s);

for i=f(1:end)
    x=x+sin(2*pi*i*n);
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

L=4

y1=zeros(1,len(x)*L);
y1(1:L:end)=x;

y2=zeros(1,len(x)*L);
y2(1:L:end)=x;
for i=1:L:len(y2)-L
    y2(i+1:i+L-1)=(y2(i)+y2(i+L))/2;
end


y3=zeros(1,len(x)*L);
y3(1:L:end)=x;
for i=1:L:len(y3)-L
    y3(i+1:i+L-1)=(y3(i)+y3(i+L))/L;
end

y4=zeros(1,len(x)*L);
y4(1:L:end)=x;
for i=1:L:len(y3)-L
    y4(i+1:i+L-1)=(y4(i)+y4(i+L))*L;
end



y5=zeros(1,len(x)*L);
y5(1:L:end)=x;
for i=1:L:len(y3)-L
    y5(i+1:i+L-1)=y5(i);
end

y6=zeros(1,len(x)*L);
y6(1:L:end)=x;
for i=1:L:len(y3)-L
    y6(i+1:i+L-1)=linspace(y6(i),y6(i+L),L);
end


plot(abs(fft(y1)))
title('fft y1 with zero insert')
figure
plot(abs(fft(y2)))
title('fft y2 with med insert')
figure
plot(abs(fft(y3)))
title('fft y1 with (x(i)+x(i+1))/L')
figure
plot(abs(fft(y4)))
title('fft y1 with (x(i)+x(i+1))*L')    
figure
plot(abs(fft(y5)))
title('fft y1 with x(i)')    
figure
plot(abs(fft(y6)))
title('fft y1 with lineinter') 

