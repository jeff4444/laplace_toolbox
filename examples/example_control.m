% Example: Control System Step Response
syms s t

G_s = 10 / (s*(s + 2));  % Open-loop TF
T_s = G_s / (1 + G_s);   % Closed-loop TF with unity feedback
Y_t = ilaplace(T_s / s, s, t);  % Step response

figure;
hold on;
% Input arrow
quiver3(-2, 0, 0, 1.5, 0, 0, 'LineWidth', 2, 'MaxHeadSize', 2);
% Summing junction
[X, Y, Z] = sphere(20);
surf(0.1*X, 0.1*Y, 0.1*Z, 'FaceColor', 'cyan', 'EdgeColor', 'none');
% Arrow from summing junction to block
quiver3(0.2, 0, 0, 1.5, 0, 0, 'LineWidth', 2, 'MaxHeadSize', 2);
% Block (plant/controller)
plot3([1.8 2.8 2.8 1.8 1.8], [-0.3 -0.3 0.3 0.3 -0.3], [0 0 0 0 0], 'k', 'LineWidth', 2);
text(2.3, 0, 0.2, 'G(s)', 'FontSize', 12, 'HorizontalAlignment', 'center');
% Arrow from block to output
quiver3(2.8, 0, 0, 1.5, 0, 0, 'LineWidth', 2, 'MaxHeadSize', 2);
% Feedback path
plot3([4.3 4.3], [0 -1], [0 0], 'k', 'LineWidth', 2);
plot3([-0.2 4.3], [-1 -1], [0 0], 'k', 'LineWidth', 2);
plot3([-0.2 -0.2], [-1 0], [0 0], 'k', 'LineWidth', 2);
text(3.5, -1.1, 0, 'Feedback', 'FontSize', 10);
axis equal;
xlim([-3 5])
ylim([-2 2])
zlim([-1 1])
view(30,30)
title('Control System Block Diagram 3D View')
hold off;
pause(2); % Pause to allow viewing before plotting

fplot(Y_t, [0, 10], 'LineWidth', 2)
grid on
xlabel('Time (s)')
ylabel('Output')
title('Step Response of Control System')