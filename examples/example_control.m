% Example: Control System Step Response
syms s t

G_s = 10 / (s*(s + 2));  % Open-loop TF
T_s = G_s / (1 + G_s);   % Closed-loop TF with unity feedback
Y_t = ilaplace(T_s / s, s, t);  % Step response

fplot(Y_t, [0, 10], 'LineWidth', 2)
grid on
xlabel('Time (s)')
ylabel('Output')
title('Step Response of Control System')