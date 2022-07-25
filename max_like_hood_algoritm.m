clc
clear all
close all



x=2/3;
v=[-1,-x/2,x/2,1];
v_vec=zeros(1,len(v)^2);
map=zeros(2,2,2,2);

pos=1;
for k=1:4
    for l=1:4
      v_vec(pos)=v(k)+1i*v(l);
      pos=pos+1;
    end
end

pos=1;
for a0=1:2
    for a1=1:2
        for a2=1:2
            for a3=1:2
                map(a0,a1,a2,a3)=v_vec(pos);
                pos=pos+1;
            end
        end
    end
end

c=[1,0,1,1];
k=0.1;
x=(rand(1)+1i*rand(1))*k+map(c(1)+1,c(2)+1,c(3)+1,c(4)+1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bit=[0,0,0,0];

one=0;
zer=0;

a0=1;
 for a1=1:2
      for a2=1:2
           for a3=1:2
               zer=zer+abs(x-map(a0,a1,a2,a3));          
           end
     end
 end
a0=2;
 for a1=1:2
      for a2=1:2
           for a3=1:2
               one=one+abs(x-map(a0,a1,a2,a3));          
           end
     end
 end

bit(1)=log(zer/one);



 
one=0;
zer=0;

a1=1;
 for a0=1:2
      for a2=1:2
           for a3=1:2
               zer=zer+abs(x-map(a0,a1,a2,a3));          
           end
     end
 end
a1=2;
 for a0=1:2
      for a2=1:2
           for a3=1:2
               one=one+abs(x-map(a0,a1,a2,a3));          
           end
     end
 end

bit(2)=log(zer/one);

one=0;
zer=0;

a2=1;
 for a1=1:2
      for a0=1:2
           for a3=1:2
               zer=zer+abs(x-map(a0,a1,a2,a3));          
           end
     end
 end
a2=2;
 for a1=1:2
      for a0=1:2
           for a3=1:2
               one=one+abs(x-map(a0,a1,a2,a3));          
           end
     end
 end

bit(3)=log(zer/one);

one=0;
zer=0;

a3=1;
 for a1=1:2
      for a2=1:2
           for a0=1:2
               zer=zer+abs(x-map(a0,a1,a2,a3));          
           end
     end
 end
a3=2;
 for a1=1:2
      for a2=1:2
           for a0=1:2
               one=one+abs(x-map(a0,a1,a2,a3));          
           end
     end
 end

bit(4)=log(zer/one);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

plot(real(v_vec),imag(v_vec),'*')
hold
plot(real(x),imag(x),'red*')

c_est=double(bit>0);

