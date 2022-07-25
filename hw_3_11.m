clc;clear all;close all;


rz=-2:0.1:2;
iz=rz;

rH=zeros(length(iz),length(rz));
iH=rH;


for cnt=1:length(rz)
    for xnt=1:length(iz)
    z=rz(cnt)+i*iz(xnt);
    H=(z-0.05)/((z-1.55)*(z+0.55i));  
    rH(cnt,xnt)=real(H);
    iH(cnt,xnt)=imag(H);
    end
end


contour(rz,iz,rH);
title('real part of H(z)');
figure

contour(rz,iz,iH);
title('imag part of H(z)');

