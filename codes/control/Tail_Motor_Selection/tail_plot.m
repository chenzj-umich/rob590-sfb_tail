clear
close all hidden

%%
% x axis is length
% y axis is mass

theta_nom = 0;
I_b = 70142710.22;
M_b = 3936.59;
COM_b = 45.52;
tail_l = linspace(2, 1000, 500);

% requirement 1, robot is roughly balanced around hip

% requirement 2, tail effectiveness above 0.4

mass = 300:2:800;
I_t = @(m, l) .5 * m * (4/3 * l)^2 + 1/12 * .5 * m * (4/3 * l)^2;
calc_tail_eff = @(m, l) I_t(m, l) / ( I_t(m, l) + I_b);

tail_eff = zeros([length(tail_l), length(mass)]);

for i = 1:length(tail_l)
    for k  = 1:length(mass)
        tail_eff(i, k) = calc_tail_eff(mass(k), tail_l(i));
        % if tail_eff(i, k) < 0.4
        %     tail_eff(i, k) = 0;
        % end
    end
end
% hold on
pcolor(tail_l, mass, tail_eff', EdgeColor='none' )

cd = colorbar;
clim([0, 1]);
cd.Ticks = linspace(0.4, 1, 5);
hold on
plot(tail_l, M_b * COM_b./(tail_l * cos(theta_nom) ), LineWidth=2, Color='r')
ylim([300, 800])

scatter(190,600, 50, 'r', 'o', LineWidth=2)
scatter(280,615, 50, 'o', 'o', LineWidth=2)
legend('', 'Balanced Tail Configs', sprintf('Old Config, \\zeta_t = %04f', calc_tail_eff(600, 190)), sprintf('New Config, \\zeta_t = %04f', calc_tail_eff(615, 280)))

xlabel('Length (mm)')
ylabel('Mass (g)')

% % requirement 3: inertia matching
% motor_inertia = 1052 + 1500;
% ref_inertia = motor_inertia * 50^2 * 2;
% 
% load_inertia = I_t(600, 400);
% 
% in_ratio = load_inertia/(ref_inertia * 2);
% 
% I_predict = I_t(450, 400);
% I_actul = 88246757.33;