[x,y] = meshgrid(-5:0.1:5,-5:0.1:5);

b1 = 4;
b2 = -4;
Gamma1 = 2;
Gamma2 = -2;
z       = x + 1i*y;
theta   = angle(z);
r       = abs(z);
U = 2;
W = U*z-(1i*Gamma1/(2*pi))*log(z-b1)-(1i*Gamma2/(2*pi))*log(z-b2);
phi = real(W);
psi = imag(W);
dw_dz = U - ((1i*Gamma1)./(2*pi*(z-b1)))- ((1i*Gamma2)./(2*pi*(z-b2)));
V = conj(dw_dz);
v=abs(V);

rho = 1.225;
P_t = 100002.45;
P_e = P_t - 0.5*rho.*(v.^2);


figure
contour(x,y,phi,25);
figure
contour(x,y,psi,25)
figure
contour(x,y,v,25)
figure
contour(x,y,P_e,25)