function plot_press(P_e, i)
    figure;
    if i == 0
        [x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
        [~,h] = contourf(x,y,P_e,25,'--');
        h.LineWidth = 1;
    else
        [r, theta] = meshgrid(0:0.1:5,0:0.1:2*pi);
        [~,h] = contourf(r,theta,P_e,25,'--');
        h.LineWidth = 0.5;
    end
    hold on;
    title('Sobreposição de escoamentos: Linhas isobáricas');
    set(h, 'Color', 'k');
    hold off;
    hold on;
    t = colorbar;
    t.Label.String = 'Magnitude de pressão [Pa]';
    hold on;
    axis tight;
    axis equal;
    hold off;
end