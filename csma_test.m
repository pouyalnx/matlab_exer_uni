clc;
clear all;
close all;


N=4;
code=eye(N);



fname="csma_test.bin";
%N_data=1024;
%f=fopen(fname,'w');
%fwrite(f,mod(rand(N_data,1),256));
%fclose(f);


f=fopen(fname);
data=fread(f);
fclose(f);

%create data packs

N_frame=len(data);
N_pack=N_frame/N;
data_pack=zeros(N_pack*N,1);

bf=eye(N_pack);
for k=1:N-1
   bf=[bf;zeros(N_pack)]; 
end




for k=1:N
   data_pack=data_pack+kron((bf')*data,code(:,k));
   bf=circshift(bf,N_pack);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



y=data_pack;
plot(y);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

d=[];
for k=1:N
    divr=kron(eye(N_pack),code(k,:));
    d=[d;divr*y];
end








