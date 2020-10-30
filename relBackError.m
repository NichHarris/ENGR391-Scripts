clc;
clear;

A = [5 -3 2; -10 4 -1; -4 -2 0];
b = [4; -2; 5];
% xr = approximate solution
xr = [8.8; 9.9; 4.5];
% R = exact solution
r = A\b;


Axr = A*xr;
top = Axr-b;

infNormTop = max(abs(top));
infNormB = max(abs(b));

relBackErr = infNormTop/infNormB