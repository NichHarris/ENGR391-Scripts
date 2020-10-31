% Script to find Asymptotic Error
% lamda = |f''(r)/2*f'(r)|
% error = lambda*error^1+n;
% n = number iterations from the current error, so if error = iteration 4,
% and we want 5, n = 1 so we get error^2;
clc;
clear;

r = -1.9;
x0 = 0;
error = abs(x0-r);
##n = 1;
dfr = 0.1857;
##ddfr = 6*r - 8;
tolerance = 0.001

% Fixed Point
lambda = abs(dfr);

% Newton
##lambda = abs(ddfr/(2*dfr));

for i = 1:100
    interation = i
    error = lambda*error
    if error <= tolerance
      break
    end
end
    