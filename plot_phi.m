function plot_phi(phi, i)
    figure
    if i == 0
        [x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
        [~,h] = contour(x,y,phi,60,'--');
    else
        [r, theta] = meshgrid(-5:0.1:5,-2*pi:0.1:2*pi);
        [~,h] = contour(r,theta,phi,50,'-');
    end
    hold on;
    title('Sobreposição de escoamentos: Linhas equipotenciais');
    h.LineWidth = 2;
    set(h, 'Color', 'b');
    hold off;
    hold on;
    hold on;
    axis tight;
    axis equal;
    hold off;
end