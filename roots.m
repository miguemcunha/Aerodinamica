syms z;
U = 2;
Gamma = 2;
b = 4;
eqn = U-(1i*Gamma./(2*pi.*(z-b)))+(1i*Gamma./(2*pi.*(z+b))) == 0;
vpasolve(eqn);