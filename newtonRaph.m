% Script to find Newton Algorithm Roots
% 
clc;
clear;
format long;
% range
xi = 0.5;
n = 5;

for i = 1:n
    disp('Iteration')
    disp(i)
    % updated range value
    x = xi;
    fx = 2 + cos(exp(x) - 2) - exp(x);
    dfx = -(exp(x))*sin(exp(x) - 2) - exp(x);
    xi = x - fx/dfx;
    
    % Absolute Error
    absError = abs((xi - x));
    disp('Absolute Error')
    disp(absError)
    % Relative Error
    relError = absError/xi;
    disp('Relative Error')
    disp(relError)
end

disp('x and xi')
disp(x)
disp(xi)