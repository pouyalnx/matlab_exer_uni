clc
clear all
close all


d=[1,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,0,1,0,1,0,1,0,1];
%coder
c=(-1).^d;

Fs=4000;%dac out rate
dac_zero=2000;
dac_range=1800;
N_pulse=2;
F_pulse=10;
t=0:1/Fs:N_pulse/F_pulse;
ps=[sin(t*2*pi*F_pulse),zeros(1,len(t))];

plot(ps)


figure
%outdata
data=[]
for i=1:len(c)
   data=[data,ps*(c(i)+2)]; 
end
data=dac_range*data;%+dac_zero;

plot(data);




dk=[];

th_change=0.001;
th_one=0;
th_zero=0;
%decoder
buffer_len=1600;
buffer_check=802;
for cnt=buffer_len+1:len(data)
    sum_test=sum(abs(data(cnt-buffer_check:cnt)));
    
    if sum_test<th_change
        sum_val=sum(abs(data(cnt-buffer_len:cnt)));
        dk=[dk,sum_val];
        cnt=cnt+buffer_len;
    end
    
end

figure
plot(dk)




