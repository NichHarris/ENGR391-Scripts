% Example calculation (Using Newton algorithm)
% 
% First we note based on a plot of y=f(x) that the root is of multiplicity m=1 
% (needed to know in order to estimate correctly the error).
% 
% The plot allows us as well to choose an initial guess to start the algorithm 
% xo=4 
% x1=3.784361145167370 
% x2=3.735379375079544
% x3=3.733083897874097
% x4=3.733079028654685
% x5=3.733079028632814 
% We see that in iteration 5 we have an estimated absolute error of
% 
% Multiplicity m = 1, for|r-xr| = |m!*f(xr)/f^m(xr)|^(1/m)
% |r−xr|≃∣∣f(x5)/f′(x5)∣∣≃4⋅10^−16
% 
% Consequently x5 is an approximation to the root with an absolute error
% less than  10^-12

clc;
clear;
format long;

x = 4;
fx = 3*x^2 - exp(x);
dfx = 6*x - exp(x);

for i = 0:n
    fx = 3*x^2 - exp(x);
    dfx = 6*x - exp(x);
	absError = abs(fx/dfx);
    if absError <= 10^-12
        i
        x
        absError
        break
    end
    x = x - (fx/dfx);
end

% Relative Error
relError = absError/x