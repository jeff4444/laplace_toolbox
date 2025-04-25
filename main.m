% main.m
% Entry point for the Laplace and Differential Equation Toolbox

clc; clear;

disp('Welcome to the Laplace and Differential Equation Toolbox');
disp('=========================================================');

i = 0;
while i < 1
    option = prompt_input();
    i = i + 1;
    switch option
        case 1
            disp('--- Laplace Transform ---');
            syms t s
            expr = input('Enter the time-domain function (in terms of t): ', 's');
            f = str2sym(expr);
            result = laplace_transform(f, t, s);
            fprintf('Laplace Transform: %s\n', char(result));
        
        case 2
            disp('--- Inverse Laplace Transform ---');
            syms t s
            expr = input('Enter the Laplace-domain function (in terms of s): ', 's');
            F = str2sym(expr);
            result = inverse_laplace_transform(F, s, t);
            fprintf('Inverse Laplace Transform: %s\n', char(result));
        
        case 3
            disp('--- Solve Differential Equation ---');
            syms y(t)
            eqn = input('Enter the ODE (use y(t) and diff(y,t)): ', 's');
            ode = str2sym(eqn);
            result = solve_ode(ode, y, t);
            fprintf('Solution: %s\n', char(result));
        
        case 4
            disp('Running Example: RLC Circuit...');
            run('examples/example_rlc.m');
        
        case 5
            disp('Running Example: Mass-Spring-Damper...');
            run('examples/example_mass_spring.m');
        
        case 6
            disp('Running Example: Control System...');
            run('examples/example_control.m');
        
        case 0
            disp('Exiting Toolbox. Goodbye!');
            break;
    end
    
    fprintf('\nPress any key to continue...\n');
    pause;
end