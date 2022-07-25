clc
clear all
close all

f=fopen('1.jpg');
d=fread(f);
fclose(f);


n=2^(8);
p=zeros(1,n);
for k=1:n
   p(k)=sum(d==k-1)/len(d); 
end

subplot(2,1,1);
plot(p);

h=-log(p).*p;

subplot(2,1,2);
plot(h);