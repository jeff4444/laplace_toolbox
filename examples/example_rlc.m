% Example: RLC Circuit Response
syms s t

R = 1; L = 1; C = 1;
V_in = 1/s;
I_s = V_in / (L*s^2 + R*s + 1/C);
I_t = ilaplace(I_s, s, t);

fplot(I_t, [0, 10], 'LineWidth', 2)
grid on
xlabel('Time (s)')
ylabel('Current (A)')
title('RLC Circuit: Current vs Time')