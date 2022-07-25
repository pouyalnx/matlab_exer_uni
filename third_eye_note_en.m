function d = third_eye_note_en(Fs,tdur,max_dur,f)
d=[];
t=0;
while t<tdur
 s1=floor(rand(1,1)*666);
 s22=floor(rand(1,1)*666); 
   
 dur=mod(s22,max_dur)+1;
 t=t+dur;
 fc=mod(s1,len(f))+1;
 d=[d,third_eye_note(f(fc),dur,Fs)];
end
end

