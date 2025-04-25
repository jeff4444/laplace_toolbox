function [I_s, I_t] = rlc_response(R, L, C, V_in)
    % Computes current in an RLC circuit using Laplace transforms
    % V_in should be symbolic, usually 1/s for unit step
    
    syms s t

    Z_s = L*s^2 + R*s + 1/C;  % Impedance in Laplace domain
    I_s = V_in / Z_s;         % Current in Laplace domain
    I_t = ilaplace(I_s, s, t); % Convert to time domain
end