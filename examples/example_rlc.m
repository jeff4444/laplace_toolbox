% Example: RLC Circuit Response
syms s t

R = 10; L = 1; C = 1;
V_in = 1/s;
I_s = V_in / (L*s^2 + R*s + 1/C);
I_t = ilaplace(I_s, s, t);

figure;
% Resistor - represented by a block
plot3([0 0], [0 0], [0 1], 'k', 'LineWidth', 5);
hold on;
% Inductor - represented by a coil
theta = linspace(0,4*pi,100);
coil_x = 0.1*cos(theta);
coil_y = 0.1*sin(theta);
coil_z = linspace(1,3,length(theta));
plot3(coil_x, coil_y, coil_z, 'b', 'LineWidth', 2);
% Capacitor - represented by two parallel plates
plot3([0.2 -0.2], [0 0], [3.5 3.5], 'r', 'LineWidth', 4);
plot3([0.2 -0.2], [0 0], [4 4], 'r', 'LineWidth', 4);
% Connecting wires
plot3([0 0], [0 0], [3 3.5], 'k', 'LineWidth', 2);
plot3([0 0], [0 0], [4 5], 'k', 'LineWidth', 2);
% Ground line
plot3([-0.5 0.5], [0 0], [5 5], 'k', 'LineWidth', 3);
xlim([-1 1])
ylim([-1 1])
zlim([0 6])
xlabel('X')
ylabel('Y')
zlabel('Z')
title('RLC Circuit 3D View')
view(30,30)
hold off;
pause(2); % Pause to allow viewing before proceeding to plot I_t

fplot(I_t, [0, 10], 'LineWidth', 2)
grid on
xlabel('Time (s)')
ylabel('Current (A)')
title('RLC Circuit: Current vs Time')