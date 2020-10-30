clc;
clear;

A = [3 2 7; -2 4 -5; 1 0 4];
b = [-49; -2; -25];
% xr = approximate solution
xr = [8.7; -11; -7.5];
% R = exact solution
r = A\b


top = r - xr;

infNormTop = max(abs(top));
infNormB = max(abs(r));

relForwardErr = infNormTop/infNormB