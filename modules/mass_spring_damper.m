function [X_s, X_t] = mass_spring_damper(m, c, k, F)
    % Computes displacement in a mass-spring-damper system
    % F should be symbolic (e.g., 1/s for step force)

    syms s t

    H_s = 1 / (m*s^2 + c*s + k); % Transfer function
    X_s = H_s * F;               % Displacement in Laplace
    X_t = ilaplace(X_s, s, t);   % Displacement in time
end