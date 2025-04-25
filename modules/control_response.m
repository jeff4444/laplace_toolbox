function [T_s, Y_t] = control_response(G_s)
    % Computes the step response of a closed-loop control system
    % G_s: open-loop transfer function

    syms s t

    T_s = G_s / (1 + G_s);       % Closed-loop transfer function
    Y_s = T_s / s;               % Step input (1/s)
    Y_t = ilaplace(Y_s, s, t);   % Time-domain response
end