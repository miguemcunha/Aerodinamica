[x, y] = meshgrid(-100:0.1:100, -100:0.1:100);
z = x^2 + y^2;
contour3(x, y, z, 25);