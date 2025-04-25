function sol = solve_ode(ode, y, t, conds)
    if nargin < 4 || isempty(conds)
        sol = dsolve(ode);
    else
        conds
        sol = dsolve(ode, conds);
    end
end