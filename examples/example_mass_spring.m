% Example: Mass-Spring-Damper System
syms s t

m = 1; c = 2; k = 3;
F = 1/s;  % Unit step force
X_s = F / (m*s^2 + c*s + k);
X_t = ilaplace(X_s, s, t);

fplot(X_t, [0, 10], 'LineWidth', 2)
grid on
xlabel('Time (s)')
ylabel('Displacement (m)')
title('Mass-Spring-Damper System Response')