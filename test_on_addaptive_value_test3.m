b_c=ha.Coefficients;


[z,p,k]=tf2zpk(b_c,[1,zeros(1,length(b_c)-1)]);
zplane(z,p,k)
figure;
freq_fft(b_c,1);


filename='16 Star Sky.mp3'

[y,Fs] = audioread(filename);


randn('seed',sum(clock*200));
n=randn(size(y));

%n(:,2)=0;
n=n*0.05*(max(y(:,1))-min(y(:,1)));
y_n=n+y;
