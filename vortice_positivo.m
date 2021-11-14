[x,y] = meshgrid(-5:0.1:5,-5:0.1:5);

b = 4;
Gamma = 2;
z       = x + 1i*y;
theta   = angle(z);
r       = abs(z);
U = 2;
W = -(1i*Gamma/(2*pi))*log(z-b);
phi = real(W);
psi = imag(W);
dw_dz = -((1i*Gamma)./(2*pi*(z-b)));
V = conj(dw_dz);
v=abs(V);

figure
contour(x,y,phi,25);
figure
contour(x,y,psi,25)
figure
contour(x,y,v,25)