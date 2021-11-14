[x,y] = meshgrid(0:0.1:5,0:0.1:5);
z       = x + 1i*y;
theta   = angle(z);
r       = abs(z);
U = 2;
W = U*z;
phi = real(W);
psi = imag(W);
V = conj(W);
v=abs(V);

figure
contour(x,y,phi,25);
figure
contour(x,y,psi,25)
figure
contour(x,y,v,25)