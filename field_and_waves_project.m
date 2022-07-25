clear all;
close all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%all freq unit is mhz
f_start=100;
f_end=2000;
delta_f=1;


fu=10^(6);
f=(f_start:delta_f:f_end)*fu;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Geometric characteristics
%notic:all length uint is mm

%1-parallel line
d_1=2.5;
w_1=20;
%2-pairing wire line
d_2=4;
a_2=2.5;
%3-coaxial transmission line
b_3=7;
a_3=5;

uc=10^(-3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Material
eps=3*(8.85*10^-12);
mu=4*pi*10^(-7);
sig=10^(-3);
sigc=1.6*10^(7);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RS=sqrt(pi*f*mu/sigc);
%ALL R must be multiplied with RS

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1-parallel line

R1=2/(w_1*uc);
L1=mu*d_1/w_1;
G1=sig*w_1/d_1;
C1=eps*w_1/d_1;

gamma_1=sqrt((R1*RS+j*2*pi*f*L1).*(G1+j*2*pi*f*C1));
alpha_1=real(gamma_1);
beta_1=imag(gamma_1);
Z0_1=sqrt((R1*RS+j*2*pi*f*L1)./(G1+j*2*pi*f*C1));
R0_1=real(Z0_1);
X0_1=imag(Z0_1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2-pairing wire line
R2=1/(pi*a_2*uc);
L2=mu*acosh(d_2/(2*a_2))/pi;
G2=pi*sig/acosh(d_2/(2*a_2));
C2=pi*eps/acosh(d_2/(2*a_2));


gamma_2=sqrt((R2*RS+j*2*pi*f*L2).*(G2+j*2*pi*f*C2));
alpha_2=real(gamma_2);
beta_2=imag(gamma_2);
Z0_2=sqrt((R2*RS+j*2*pi*f*L2)./(G2+j*2*pi*f*C2));
R0_2=real(Z0_2);
X0_2=imag(Z0_2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3-coaxial transmission line

R3=(1/a_3+1/b_3)/(2*pi*uc);
L3=mu*log(b_3/a_3)/(2*pi);
G3=2*pi*sig/log(b_3/a_3);
C3=2*pi*eps/log(b_3/a_3);

gamma_3=sqrt((R3*RS+j*2*pi*f*L3).*(G3+j*2*pi*f*C3));
alpha_3=real(gamma_3);
beta_3=imag(gamma_3);
Z0_3=sqrt((R3*RS+j*2*pi*f*L3)./(G3+j*2*pi*f*C3));
R0_3=real(Z0_3);
X0_3=imag(Z0_3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
plot(f,alpha_1);
title('parallel line');
xlabel('freq mhz');
ylabel('alpha Np/m');

figure
plot(f,beta_1);
title('parallel line');
xlabel('freq mhz');
ylabel('beta rad/m');

figure
plot(f,R0_1);
title('parallel line');
xlabel('freq mhz');
ylabel('R0 Ohm');

figure
plot(f,X0_1);
title('parallel line');
xlabel('freq mhz');
ylabel('X0 rad/m');




figure
plot(f,alpha_2);
title('pairing wire line');
xlabel('freq mhz');
ylabel('alpha Np/m');

figure
plot(f,beta_2);
title('pairing wire line');
xlabel('freq mhz');
ylabel('beta rad/m');

figure
plot(f,R0_2);
title('pairing wire line');
xlabel('freq mhz');
ylabel('R0 Ohm');

figure
plot(f,X0_2);
title('pairing wire line');
xlabel('freq mhz');
ylabel('X0 rad/m');



figure
plot(f,alpha_3);
title('coaxial transmission line');
xlabel('freq mhz');
ylabel('alpha Np/m');

figure
plot(f,beta_3);
title('coaxial transmission line');
xlabel('freq mhz');
ylabel('beta rad/m');

figure
plot(f,R0_3);
title('coaxial transmission line');
xlabel('freq mhz');
ylabel('R0 Ohm');

figure
plot(f,X0_3);
title('coaxial transmission line');
xlabel('freq mhz');
ylabel('X0 rad/m');
