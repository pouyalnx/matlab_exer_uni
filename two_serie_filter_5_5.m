clear all;close all;clc;

b=0.5*[1 1];
a=[1 0];

b2=conv(b,b); % creat poly multi
a2=conv(a,a);


h1=freq_z(b2,a2);



b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h2=freq_z(b2,a2);



b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h3=freq_z(b2,a2);


b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h4=freq_z(b2,a2);


b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h5=freq_z(b2,a2);

b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

[h6,ang]=freq_z(b2,a2);

ang=ang*180/pi;
plot(ang,abs(h1),ang,abs(h2),ang,abs(h3),ang,abs(h4),ang,abs(h5),ang,abs(h6));

cut_off_line=ones(1,length(ang))/sqrt(2);
hold
plot(ang,cut_off_line);
title('low pass filter');


figure

b=0.5*[1 -1];
a=[1 0];

b2=conv(b,b); % creat poly multi
a2=conv(a,a);


h1=freq_z(b2,a2);



b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h2=freq_z(b2,a2);



b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h3=freq_z(b2,a2);


b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h4=freq_z(b2,a2);


b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h5=freq_z(b2,a2);

b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

[h6,ang]=freq_z(b2,a2);

ang=ang*180/pi;
plot(ang,abs(h1),ang,abs(h2),ang,abs(h3),ang,abs(h4),ang,abs(h5),ang,abs(h6));

cut_off_line=ones(1,length(ang))/sqrt(2);
hold
plot(ang,cut_off_line);
title('high pass filter');


figure
b=[1 1];
a=[1 0];

b1=[1 -1];
a1=[1 0];

b2=conv(b1,b); % creat poly multi
a2=conv(a1,a);


h1=freq_z(b2,a2);



b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h2=freq_z(b2,a2);



b2=conv(b1,b2); % creat poly multi
a2=conv(a1,a2);

h3=freq_z(b2,a2);


b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h4=freq_z(b2,a2);


b2=conv(b1,b2); % creat poly multi
a2=conv(a1,a2);

h5=freq_z(b2,a2);

b2=conv(b,b2); % creat poly multi
a2=conv(a,a2);

h6=freq_z(b2,a2);


b2=conv(b1,b2); % creat poly multi
a2=conv(a1,a2);


[h7,ang]=freq_z(b2,a2);

ang=ang*180/pi;

h1=h1/max(h1);
h2=h2/max(h2);
h3=h3/max(h3);
h4=h4/max(h4);
h5=h5/max(h5);
h6=h6/max(h6);
h7=h7/max(h7);

plot(ang,abs(h1),ang,abs(h2),ang,abs(h3),ang,abs(h4),ang,abs(h5),ang,abs(h6),ang,abs(h7));

cut_off_line=ones(1,length(ang))/sqrt(2);
hold
plot(ang,cut_off_line);
title('band pass filter');

