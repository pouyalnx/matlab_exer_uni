clear all;close all;clc;

al=[1 0];bl=[1 1];
ah=[1 0];bh=[1 -1]';


ab=conv(al,ah);bb=conv(bl,bh);



bb(2:1:end)=bb(2:1:end)*-1;
ab(2:1:end)=ab(2:1:end)*-1;

ab2=conv(ab,ab);bb2=conv(bb,bb);

N=1024;
teta=0:1/N:1-1/N;
delta=[1,zeros(1,N-1)];

h1=filter(bb,ab,delta);
H1=fft(h1);
h2=filter(bb2,ab2,delta);
H2=fft(h2);

plot(teta,abs(H1),teta,abs(H2));

cut_off1=abs(max(H1))/sqrt(2);
cut_off2=abs(max(H2))/sqrt(2);

fnd1=find(abs(abs(H1)-cut_off1)<0.001);
fnd2=find(abs(abs(H2)-cut_off2)<0.01);

hold
if ~isempty(fnd1)
   point1=teta(fnd1) 
   plot(teta(fnd1),abs(H1(fnd1)),'red'); 
end
if ~isempty(fnd2)
   point1=teta(fnd2) 
   plot(teta(fnd2),abs(H2(fnd2)),'green'); 
end
hold
   
