clear all,close all,clc
N_FFT=2048;

F_s=8000;
f_p_v=[1000 3000];
Delta_f_v=[200 600];
StopAtten_v=[-50 -40];


StopAtten=min(StopAtten_v);
Deltafn=Delta_f_v(find(StopAtten))/F_s;

N=ceil(3/Deltafn); %as defualt
if floor(N/2)*2==N
  N=N+1;
end

Right=floor(N/2);
n=-Right:Right;
f_c1=f_p_v(1)-Delta_f_v(1)/2;
f_c2=f_p_v(2)+Delta_f_v(2)/2;

hl_D=Bandpass_Sinc(f_c1,f_c2,F_s,N);
N=floor(N/2)+1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w=hann(N)'; 
hl=w.*hl_D;

hl=[hl(end:-1:2),hl];
figure,stem(hl)
grid
xlabel('n')
ylabel('hl(n)')
title('hann window');
Hl=fft(hl,N_FFT);
f=F_s/length(Hl)*[0:length(Hl)-1];
Hl=Hl(1:N_FFT/2);
f=f(1:N_FFT/2);
figure,plot(f,abs(Hl))
grid
xlabel('f (Hz)')
ylabel('|Hl(\omega)|')
title('hann window');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w=flattopwin(N)'; 
hl=w.*hl_D;
hl=[hl(end:-1:2),hl];
figure,stem(hl)
grid
xlabel('n')
ylabel('hl(n)')
title('flattopwin window');
Hl=fft(hl,N_FFT);
f=F_s/length(Hl)*[0:length(Hl)-1];
Hl=Hl(1:N_FFT/2);
f=f(1:N_FFT/2);
figure,plot(f,abs(Hl))
grid
xlabel('f (Hz)')
ylabel('|Hl(\omega)|')
title('flattopwin window');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w=nuttallwin(N)'; 
hl=w.*hl_D;
hl=[hl(end:-1:2),hl];
figure,stem(hl)
grid
xlabel('n')
ylabel('hl(n)')
title('nuttalwin window');
Hl=fft(hl,N_FFT);
f=F_s/length(Hl)*[0:length(Hl)-1];
Hl=Hl(1:N_FFT/2);
f=f(1:N_FFT/2);
figure,plot(f,abs(Hl))
grid
xlabel('f (Hz)')
ylabel('|Hl(\omega)|')
title('nuttalwin window');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w=blackmanharris(N)'; 
hl=w.*hl_D;
hl=[hl(end:-1:2),hl];
figure,stem(hl)
grid
xlabel('n')
ylabel('hl(n)')
title('blackmanharris window');
Hl=fft(hl,N_FFT);
f=F_s/length(Hl)*[0:length(Hl)-1];
Hl=Hl(1:N_FFT/2);
f=f(1:N_FFT/2);
figure,plot(f,abs(Hl))
grid
xlabel('f (Hz)')
ylabel('|Hl(\omega)|')
title('blackmanharris window');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w=barthannwin(N)'; 
hl=w.*hl_D;
hl=[hl(end:-1:2),hl];
figure,stem(hl)
grid
xlabel('n')
ylabel('hl(n)')
title('barthannwin window');
Hl=fft(hl,N_FFT);
f=F_s/length(Hl)*[0:length(Hl)-1];
Hl=Hl(1:N_FFT/2);
f=f(1:N_FFT/2);
figure,plot(f,abs(Hl))
grid
xlabel('f (Hz)')
ylabel('|Hl(\omega)|')
title('barthannwin window');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w=tukeywin(N,0.5)'; 
hl=w.*hl_D;
hl=[hl(end:-1:2),hl];
figure,stem(hl)
grid
xlabel('n')
ylabel('hl(n)')
title('tukeywin 0.5 window');
Hl=fft(hl,N_FFT);
f=F_s/length(Hl)*[0:length(Hl)-1];
Hl=Hl(1:N_FFT/2);
f=f(1:N_FFT/2);
figure,plot(f,abs(Hl))
grid
xlabel('f (Hz)')
ylabel('|Hl(\omega)|')
title('tukeywin 0.5 window');