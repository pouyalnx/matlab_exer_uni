clc
clear all
close all


dist=2

c1=rand(2,100);
c2=rand(2,100)+dist;

y1=1;
y2=-1;


epoch=5;
n=0.15;


w=rand(2,1);

b=4;

for i=1:epoch;
   for sample=1:len(c1);
      
      %forward 
      x=c1(:,sample);
      v=w'*x+b;
      
      if(v>0)
          y=1;
      else
          y=-1;
      end

      %update
      d=y1;
      w=w+n*(d-y)*x;
      
      
      
      x=c2(:,sample);
      v=w'*x+b;
      
      if(v>0)
          y=1;
      else
          y=-1;
      end
      
      %update
      d=y2;
      w=w+n*(d-y)*x;
   end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



c1p=rand(2,200);
c2p=rand(2,200)+dist;


correct_class1=0;
correct_class2=0;

for sample=1:len(c1p);
      %forward 
      x=c1p(:,sample);
      v=w'*x+b;
      
      if(v>0)
          y=1;
      else
          y=-1;
      end

      %update
      d=y1;
      
      if d==y
          correct_class1=correct_class1+1;
      end
      
      x=c2p(:,sample);
      v=w'*x+b;
      
      if(v>0)
          y=1;
      else
          y=-1;
      end
      
      %update
      d=y2;
      if d==y
          correct_class2=correct_class2+1;
      end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
scatter(c1(1,:),c1(2,:),'b')
hold
scatter(c2(1,:),c2(2,:),'g')


plot([0 dist+1],[-b/w(2),-b/w(2)-w(1)/w(2)*(dist+1)]);
