% Example: Mass-Spring-Damper System
syms s t

m = 1; c = 2; k = 3;
F = 1/s;  % Unit step force
X_s = F / (m*s^2 + c*s + k);
X_t = ilaplace(X_s, s, t);

figure;
[X, Y, Z] = cylinder([0.1 0.1], 20);
Z = Z * 2; % height of the cylinder
surf(X, Y, Z, 'FaceColor', 'blue'); 
hold on;
plot3([0 0], [0 0], [2 3], 'k', 'LineWidth', 5); % damper (black line)
plot3([0 0], [0 0], [3 5], 'r', 'LineWidth', 2); % spring (red line)
plot3([0 0], [0 1], [5 5], 'g', 'LineWidth', 5); % mass (green line)
xlim([-1 1])
ylim([-1 1])
zlim([0 6])
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Mass-Spring-Damper System 3D View')
view(30,30)
hold off;
pause(2); % Pause to allow viewing before proceeding to plot X_t

fplot(X_t, [0, 10], 'LineWidth', 2)
grid on
xlabel('Time (s)')
ylabel('Displacement (m)')
title('Mass-Spring-Damper System Response')