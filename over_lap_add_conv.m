function [ y ] = over_lap_add_conv( h,x,N )

n2=length(h);
n1=length(x);

y=zeros(1,n1+n2-1);
storge=zeros(n2-1);

fft_n=log2(n2+N-1);
fft_n=2^ceil(fft_n);


for i=1:N+1:n1-n2
    y(i:i+fft_n-1)=ifft(fft(x(i:i+N-1),fft_n).*fft(h,fft_n));
    y(i:i+n2-2)=y(i:i+n2-2)+storge(1:n2-1);
    storge(1:n2-1)=y(i+N-n2+1:i+N-1);    
end


end

