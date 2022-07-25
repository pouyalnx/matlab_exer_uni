close all;
f=[0.1 0.5 1 2 5 10 50 100 200];
f_unit=1000; % 1 khz



vinpp=0.1; %100mv

vout1=[5 5 5 4.6 4 2.8 0.7 0.4 0.2]*2;%2 volt div
vout2=[5.2 4 2.6 1.6 0.7 0.4 0.1 0 0]*2;
vout3=[0 0.5 1 1.6 3.2 3.6 0.8 0.4 0.2]*2;

av1=vout1/vinpp;
av2=vout2/vinpp;
av3=vout3/vinpp;


line_av1=ones(1,length(f))*max(av1)/sqrt(2);
line_av2=ones(1,length(f))*max(av2)/sqrt(2);
line_av3=ones(1,length(f))*max(av3)/sqrt(2);


plot(f,line_av1,f,av1);
title('az 8.1');
figure;

plot(f,line_av2,f,av2);
title('az 8.2');
figure;

plot(f,line_av3,f,av3);
title('az 8.3');

flog=log(f);
plot(flog,av1,flog,av2,flog,av3);
figure;

