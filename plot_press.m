function plot_press(P_e, i)
    figure;
    if i == 0
        [x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
        contourf(x,y,P_e,50,'--');
    else
        [r, theta] = meshgrid(-5:0.1:5,-2*pi:0.1:2*pi);
        contour(r,theta,P_e,50,'--');
    end
    hold on;
    title('Sobreposição de escoamentos: Linhas isobáricas');
    hold off;
    hold on;
    t = colorbar;
    t.Label.String = 'Magnitude de pressão [Pa]';
    hold on;
    axis tight;
    axis equal;
    hold off;
end