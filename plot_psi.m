function plot_psi(psi, i)
    figure;
    if i == 0
        [x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
        contourf(x,y,psi,50,'--');
    else
        [r, theta] = meshgrid(-5:0.1:5,-2*pi:0.1:2*pi);
        contourf(r,theta,psi,50,'--');
    end
    hold on;
    title('Sobreposição de escoamentos: Linhas de corrente');
    hold off;
    hold on;
    t = colorbar;
    t.Label.String = 'Magnitude';
    hold on;
    axis tight;
    axis equal;
    hold off;
end