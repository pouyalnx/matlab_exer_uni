function [data] = note_func(f_start,f_stop,Fs,t)

N=t*Fs;
a=1:-1/N:0;
f=f_start:(f_stop-f_start)/N:f_stop;
t=0:1/Fs:t;
data=a.*cos(2*pi*f.*t);
end

