function [ cnt_point,cut_freq ] = cut_freq( H ,freq_vector)
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

for cnt=1:length(pos_vector)
    
end

offcet=(cut_off-Hin(cnt_point-1))/(Hin(cnt_point)-Hin(cnt_point-1));
offcet=(freq_vector(2)-freq_vector(1))*offcet;%step size

cut_freq=freq_vector(cnt_point)+offcet;


end

