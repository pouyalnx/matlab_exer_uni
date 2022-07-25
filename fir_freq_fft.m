function [ ] = fir_freq_fft(b)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[h,w]=freq_fft(b,1);

plot(w,abs(h));
title('freq response amplitue');

figure;

plot(w,phase(h));
title('freq response phase');


z=tf2zp(b,[1,zeros(1,length(b)-1)]);
figure;
zplane(z);

title('zeros zplane as you can see for each zeros with z0*exp(j*ang0)  we have another zeros with 1/z0*exp(-j*ang0) that show h(z) and h(1/z) have same zero');

end

