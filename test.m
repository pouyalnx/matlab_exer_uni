function [ cnt_point ] = test( H )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n=length(H);
pos_vector=1;
Hin=abs(H);

cut_off=max(Hin)/sqrt(2);

for cnt=2:n
    if((cut_off>=Hin(cnt-1) && cut_off<=Hin(cnt)) ||(cut_off<=Hin(cnt-1) && cut_off>=Hin(cnt)))
        cnt_point(pos_vector)=cnt;
        pos_vector=pos_vector+1;
   end
end

end

