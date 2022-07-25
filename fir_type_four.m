function [ b ] = fir_type_four( f,H ) 
%UNTITLED5 f must be normailzaed to 0->1 that comed from 0 to fs/2
%  size of b depened on input but f,h must have same size else result in
%  valid

M1=length(f);
M2=M1-0.5;

b=zeros(1,M1);

A=zeros(M1,M1);

for cnt1=1:M1
    for cnt2=1:M1
      A(cnt1,cnt2)=2*sin(pi*f(cnt1)*(M2-cnt2+1));  
    end
end

b=H*inv(A');
b=[b,-fliplr(b)];

end

