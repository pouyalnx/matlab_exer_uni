function d = third_eye_note(f,dur,Fs)
%create one strem dur in second unit
% Fs freq smaple

k1=6;
k2=1;
k3=9;

tp=dur/(k1+k2+k3);



ta=0:1/Fs:tp*k1-1/Fs;
apa=(ta/max(ta)).*cos(2*pi*ta*f);

tb=0:1/Fs:k2*tp-1/Fs;
apb=ones(1,len(tp)).*cos(2*pi*tb*f);

tc=0:1/Fs:tp*k3-1/Fs;
apc=(1-tc/max(tc)).*cos(2*pi*tc*f);

d=[apa,apb,apc];

end

