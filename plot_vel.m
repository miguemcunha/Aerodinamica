function plot_vel(v, i)
    figure;
    if i == 0
        [x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
        [~,h] = contourf(x,y,v,50,'--');
        h.LineWidth = 1;
    else
        [r, theta] = meshgrid(0:0.1:5,0:0.1:2*pi);
        [~,h] = contourf(r,theta,v,50,'--');
        h.LineWidth = 0.5;
    end
    hold on;
    title('Sobreposição de escoamentos: Magnitude de velocidade');
    set(h, 'Color', 'k');
    hold off;
    hold on;
    t = colorbar;
    t.Label.String = 'Magnitude de velocidade [m/s]';
    hold on;
    axis tight;
    axis equal;
    hold off;
end