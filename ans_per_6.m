clc
clear all


ans=0;
for k=0:7
    ans=ans+nchoosek(13,k)*nchoosek(13-k,7-k)*nchoosek(35,13-k)*nchoosek(22+k,6+k);
end

%ans=ans*2*nchoosek(26,13)*nchoosek(13,13);