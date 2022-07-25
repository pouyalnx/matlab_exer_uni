
N=12232
x=ones(1,N);
h=ones(1,N);


tic
y1=conv(x,h);
time1=toc



tic
N_MIN=2*N-1
y2=ifft(fft(x,N_MIN).*fft(h,N_MIN));
time2=toc

tic
N2=2^(nextpow2(N_MIN))
y3=ifft(fft(x,N2).*fft(h,N2));
time3=toc


fnd=find(abs(y2(1:length(y1))-y1)>0.001+
-* );
fnd1=find(abs(y3(1:length(y1))-y1)>0.001);


