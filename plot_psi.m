function plot_psi(psi, i)
    figure;
    if i == 0
        [x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
        [~,h] = contour(x,y,psi,50,'-');
    else
        [r, theta] = meshgrid(0:0.1:5,0:0.1:2*pi);
        [~,h] = contour(r,theta,psi,30,'-');
    end
    hold on;
    title('Sobreposição de escoamentos: Linhas de corrente');
    h.LineWidth = 1;
    set(h, 'Color', 'b');
    hold off;
    hold on;
    axis tight;
    axis equal;
    hold off;
end