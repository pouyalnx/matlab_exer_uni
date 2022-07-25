clc
clear all
close all

d=[0,1,1,1,1,0,0,0,1,1,1];
N=1024;
U=4;
N_zero=ceil(N/U);
N_one=ceil(2*N/U);

data=[];
for cnt=1:len(d)
    if d(cnt)==1
    data=[data,ones(1,N_one),zeros(1,N-N_one)];
    else
    data=[data,ones(1,N_zero),zeros(1,N-N_zero)];
    end
end



plot(data);
figure
%freq_fft(data,1);


f=[0,0.1,1];
m=[0,0,1];
b=fir2(64,f,m);
freq_fft(b,1);

datat=filter(b,1,data);


figure
plot(datat);
%figure
%freq_fft(datat,1);


