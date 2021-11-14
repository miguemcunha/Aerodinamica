[x,y] = meshgrid(-5:1:5,-5:1:5);
b = 4;
Gamma = 2;
U = 2;
z = x + 1i.*y;
theta = angle(z);
r = abs(z);
W = U - ((b*Gamma)./(pi*z)) - ((b^2*Gamma)./(3*pi*z));
phi = real (W);
%theta_1 = -((b*Gamma)./(pi*r))-((b^2*Gamma)./(3*pi*r))+U;
%theta = real (acos(phi./theta_1));

figure
contourf(x,y,phi,25);

psi = imag(W);

figure
contourf(x,y,psi,25);

V = conj(U + ((b*Gamma)./(pi*(z.^2))) + ((b^2*Gamma)./(3*pi*(z.^2))));
v=abs(V);

figure
contourf(x,y,v,25);




