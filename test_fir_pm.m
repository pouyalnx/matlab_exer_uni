


f=[0 0.04 0.05 0.25 1];
m=[1 1    0.5   0.06 0];
n=255;
b=fir2(n,f,m);
a=[1,zeros(1,length(b)-1)];
x=filter(b,a,y_n);
sound(x,Fs);

freq_fft(b,1);