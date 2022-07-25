x=[1,2,3,4,0,0,0];
h=[5,6,7,0,0,0,0];

X=fft(x);
H=fft(h);

Y=H.*X;

y=ifft(Y)
y2=conv(x,h)





