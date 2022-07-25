clc
clear all
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dist=2

c1_d=rand(2,100);
c1_u=rand(2,100)+dist;


c2_u=rand(2,100)+dist*([1 0;0 0]*ones(2,100));
c2_d=rand(2,100)+dist*([0 0;0 1]*ones(2,100));

scatter(c1_d(1,:),c1_d(2,:),'b')
hold
scatter(c2_d(1,:),c2_d(2,:),'g')
scatter(c1_u(1,:),c1_u(2,:),'b')
scatter(c2_u(1,:),c2_u(2,:),'g')


d_c1=1;
d_c2=-1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
epochs=25;
n=0.01;

%w for layer counted form endest layer
w1=rand(2,2);
w2=rand(2,1);
b=0.02

a=1;

for cnt=1:epochs
   for sample=1:length(c1_d)
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       d=d_c1;
       
       y1=c1_d(:,sample);
       v2=w1'*y1;
       y2=tanh(a*v2);
       
       v3=w2'*y2+b;
       y3=tanh(a*v3);
       
       o=y3;
       
       en=(d-o);
       c2=a*en*(-1+o)*(1+o);
       w2=w2-(c2*(y2')*n)';
       
       c1=w2*c2;
       w1=w1-(c1*(y1')*n)';
    
       
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       d=d_c1;
       y1=c1_u(:,sample);
       v2=w1'*y1;
       y2=tanh(a*v2);
       
       v3=w2'*y2+b;
       y3=tanh(a*v3);
       
       o=y3;
       
       en=(d-o);
       c2=en*a*(-1+o)*(1+o);
       w2=w2-(c2*(y2')*n)';
       
       c1=w2*c2;
       w1=w1-(c1*(y1')*n)';
       
       
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       d=d_c2;
       y1=c2_d(:,sample);
       v2=w1'*y1;
       y2=tanh(a*v2);
       
       v3=w2'*y2+b;
       y3=tanh(a*v3);
       
       o=y3;
       
       en=(d-o);
       c2=en*a*(-1+o)*(1+o);
       w2=w2-(c2*(y2')*n)';
            
       c1=w2*c2;
       w1=w1-(c1*(y1')*n)';
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       d=d_c2;
       y1=c2_d(:,sample);
       v2=w1'*y1;
       y2=tanh(a*v2);
       
       v3=w2'*y2+b;
       y3=tanh(a*v3);
       
       o=y3;
       
       en=(d-o);
       c2=en*a*(-1+o)*(1+o);
       w2=w2-(c2*(y2')*n)';
       c1=w2*c2;
       w1=w1-(c1*(y1')*n)';
       
       
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

c1_verfiy=0;
c2_verfiy=0;

c1_df=rand(2,100);
c1_uf=rand(2,100)+dist;


c2_uf=rand(2,100)+dist*([1 0;0 0]*ones(2,100));
c2_df=rand(2,100)+dist*([0 0;0 1]*ones(2,100));

for sample=1:length(c1_df)
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       d=d_c1;
       
       y1=c1_df(:,sample);
       v2=w1'*y1;
       y2=tanh(a*v2);
       
       v3=w2'*y2+b;
       y3=tanh(a*v3);
       
       o=sign(y3);
       if(o==d)
           c1_verfiy=c1_verfiy+1;
       end
       
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       d=d_c1;
       y1=c1_uf(:,sample);
       v2=w1'*y1;
       y2=tanh(a*v2);
       
       v3=w2'*y2+b;
       y3=tanh(a*v3);
       
       o=sign(y3);
       if(o==d)
           c1_verfiy=c1_verfiy+1;
       end
       
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       d=d_c2;
       y1=c2_df(:,sample);
       v2=w1'*y1;
       y2=tanh(a*v2);
       
       v3=w2'*y2+b;
       y3=tanh(a*v3);
       
       o=sign(y3);
       if(o==d)
           c2_verfiy=c2_verfiy+1;
       end

       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       d=d_c2;
       y1=c2_df(:,sample);
       v2=w1'*y1;
       y2=tanh(a*v2);
       
       v3=w2'*y2+b;
       y3=tanh(a*v3);
       
       o=sign(y3);
       if(o==d)
           c2_verfiy=c2_verfiy+1;
       end
 
       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%in this one we dont use activation function
y1=c1_d(:,5);
v2=w1'*y1;
y2=tanh(a*v2);
       
v3=w2'*y2;
y3=tanh(a*v3);
o=y3
       

y1=c2_d(:,5);
v2=w1'*y1;
y2=tanh(a*v2);
       
v3=w2'*y2;
y3=tanh(a*v3);
o=y3
