pattern=[1,2,3,4,4,3,2,1];
input_d=[0,0,0,0,1.2,2,3,4,0,0,0,0,1,2,3,4,4,3,2,1,0];
thershold=0.01;

N=length(pattern);
N_in=length(input_d);

pattern_mask=abs(fft(pattern));


for cnt=1:N_in-N+1
   in_pices=input_d(cnt:cnt+N-1);
   in_mask=abs(fft(in_pices));
   if abs(sum(in_mask-pattern_mask))<thershold
       disp('find pattern')
   end   1
end