clear all;close all;clc

p1=exp(i*pi/4)
p2=exp(-i*pi/4)

b_p=[p1 p2];
b=poly(b_p);
a=[1]*3.414;


[h1]=freq_z(b,a);



p1=exp(i*pi/4)
p2=exp(-i*pi/4)

b_p=[p1 p2];
b=poly(b_p);
a_p=b_p*0.1;
a=poly(a_p)*3;


[h2]=freq_z(b,a);
%title('with an pole in 0.9e(i*pi/4)');

p1=exp(i*pi/4)
p2=exp(-i*pi/4)

b_p=[p1 p2];
b=poly(b_p);
a_p=b_p*0.4;
a=poly(a_p)*2;


%figure
[h3]=freq_z(b,a);
%title('with an pole in 0.1e(i*pi/4)');

p1=exp(i*pi/4)
p2=exp(-i*pi/4)

b_p=[p1 p2];
b=poly(b_p);
a_p=b_p*0.6;
a=poly(a_p)*1.546;


%figure
[h4]=freq_z(b,a);
%title('with an pole in 0.95e(i*pi/4)');

p1=exp(i*pi/4)
p2=exp(-i*pi/4)

b_p=[p1 p2];
b=poly(b_p);
a_p=b_p*0.9;
a=poly(a_p)*1.1;


%figure
[h5]=freq_z(b,a);
%title('with an pole in 0.7e(i*pi/4)');


p1=exp(i*pi/4)
p2=exp(-i*pi/4)

b_p=[p1 p2];
b=poly(b_p);
a_p=b_p*0.95;
a=poly(a_p)*1.06;


%figure
[h6,ang]=freq_z(b,a);
%title('with an pole in 0.6e(i*pi/4)');

plot(ang,abs(h1),ang,abs(h2),ang,abs(h3),ang,abs(h4),ang,abs(h5),ang,abs(h6))
