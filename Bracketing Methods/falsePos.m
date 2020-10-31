% Script to find false position roots
% 
clc;
clear;

% range
a = 1;
b = 2;
n = 1;

for i = 1:n
    disp(i)
    % updated range value
    fa = a^3 + 4*a^2 - 10;
    fb = b^3 + 4*b^2 - 10;
    c = ((a*fb) - (b*fa))/(fb-fa);
    fc = c^3 + 4*c^2 - 10;;
    
    if ((fa * fc) < 0)
        b = c;
    else
        a = c;
    end
    c
    % Absolute Error
    absError = abs((b-a)/2)
    % Relative Error
    relError = abs(absError/c)
    
##    if absError <= tolerance
##      break
##    end
end

disp('A and B')
a
b
c
absError
relError