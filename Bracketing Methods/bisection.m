% Script to find bisection roots
% if fa * fb < 0 replace b, else replace a

clc;
clear;

% range
a = 1;
b = 2;
% n = interations
n = 3;

##tolerance = ***;

for i = 0:n
    disp('Iteration: ') disp(i);
	
    % updated range value
    c = (b + a)/2;  
    fa = a^3 + 4*a^2 - 10;
    fb = b^3 + 4*b^2 - 10;
    fc = c^3 + 4*c^2 - 10;

    if ((fa * fc) < 0)
        b = c;
    else
        a = c;
    end
	  c
    % Absolute Error
    absError = abs((b-a)/2);
    % Relative Error
    relError = abs(absError/c);
    % in the case where we want a max error below a certain tolerance
##    if absError <= tolerance
##      break
##    end
    
end
disp('A and B and C')
a
b
c
absError
relError

