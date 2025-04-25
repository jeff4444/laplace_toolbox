function choice = prompt_input()
    clc;
    disp('==============================');
    disp('  Laplace Toolbox - Main Menu ');
    disp('==============================');
    disp('1. Laplace Transform');
    disp('2. Inverse Laplace Transform');
    disp('3. Solve Differential Equation');
    disp('4. View Example: RLC Circuit');
    disp('5. View Example: Mass-Spring-Damper');
    disp('6. View Example: Control System');
    disp('0. Exit');
    disp('------------------------------');
    
    choice = input('Enter your choice: ');
    
    if isempty(choice) || ~ismember(choice, 0:6)
        disp('Invalid selection. Please choose a valid option.');
        pause(1.5);
        choice = prompt_input(); % Recursive call to re-prompt
    end
end