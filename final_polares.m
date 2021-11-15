clear
[r, theta] = meshgrid(-5:0.1:5,-2*pi:0.1:2*pi);
z = r.*(cos(theta)+1i.*sin(theta));
theta = angle(z);
r = abs(z);
W = 0;
dw_dz = 0;
rho = 1.225;
P_t = 100002.45;
check = 0;
msg1 = "Select the number of flow elements to evaluate";
opt1 = ["1", "2", "3", "4"];
choice = menu(msg1, opt1);


for i=1:1:choice
    msg2 = sprintf("Select the flow element number %d", i);
    opt2 = ["Sink/Source","Vortex","Uniform Flow"];
    flow_element = menu(msg2, opt2);
    switch flow_element
        case 1
            check = 1;
            prompt = {'Enter value of m:','Enter coordinate r:','Enter coordinate theta:'};
            dlgtitle = 'Values of source/sink';
            answer = inputdlg(prompt,dlgtitle);
            m = str2double(answer{1});
            b = str2double(answer{2});
            a = str2double(answer{3});
            
            sour_sink = (m/(2*pi)).*(log(z-(b*exp(1i*a))));
            dw_sour_sink = (m./(2*pi.*(z-(b*exp(1i*a)))));
            
            W = W + sour_sink;
            dw_dz = dw_dz + dw_sour_sink;
        case 2
            check = 1;
            prompt = {'Enter value of Gamma:','Enter coordinate r:','Enter coordinate theta:'};
            dlgtitle = 'Values of vortex';
            answer = inputdlg(prompt,dlgtitle);
            Gamma = str2double(answer{1});
            b = str2double(answer{2});
            a = str2double(answer{3});
            
            vortex = -(1i*Gamma/(2*pi))*log(z-(b*exp(1i*a)));
            dw_vortex = -((1i*Gamma)./(2*pi*(z-(b*exp(1i*a)))));
            
            W = W + vortex;
            dw_dz = dw_dz + dw_vortex;
        case 3 
            if check == 0
                check = 2;
            end
            prompt = {'Enter value of U:'};
            dlgtitle = 'Values of uniform field';
            answer = inputdlg(prompt,dlgtitle);
            U = str2double(answer{1});

            uniform = U*z;
            dw_uniform = U;
            
            W = W + uniform;
            dw_dz = dw_dz + dw_uniform;
        otherwise 
            %default
    end
            
end
    
phi = real(W);
psi = imag(W);
V = conj(dw_dz);
v = abs(V);
P_e = P_t - (rho.*(v.^2)/2);

plot_phi(phi, 1);
plot_psi(psi, 1);
if check == 1
    plot_vel(v, 1);
    plot_press(P_e, 1);
end

%figure
%title('Sobreposição de escoamentos: Linhas de corrente');
%barra1 = colorbar;
%caxis = [0 10];
%axis tight
%axis equal
%xlabel1 = ('x[m]');
%ylabel1 = ('y[m]');
%contourf(x,y,phi,50,'--');

% figure
% axis tight
% axis equal
% title('Sobreposição de escoamentos: Linhas de corrente');
% barra2 = colorbar;
% barra2.Label.String = 'Magnitude';
% xlabel2 = ('x[m]');
% ylabel2 = ('y[m]');
% contourf(x,y,psi,50,'--');
% if check == 1
%     figure
%     axis tight
%     axis equal
%     title('Sobreposição de escoamentos: Linhas de corrente');
%     barra3 = colorbar;
%     barra3.Label.String = 'Magnitude';
%     xlabel3 = ('x[m]');
%     ylabel3 = ('y[m]');
%     contourf(x,y,v,50,'--');
%     figure
%     axis tight
%     axis equal
%     title('Sobreposição de escoamentos: Linhas de corrente');
%     barra4 = color2bar;
%     barra4.Label.String = 'Magnitude';
%     xlabel4 = ('x[m]');
%     ylabel4 = ('y[m]');
%     contourf(x,y,P_e,50,'--');
% end