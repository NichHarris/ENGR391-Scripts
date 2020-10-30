% Script to find Asymptotic Error
% lamda = |f''(r)/2*f'(r)|
% error = lambda*error^1+n;
% n = number iterations from the current error, so if error = iteration 4,
% and we want 5, n = 1 so we get error^2;
clc;
clear;

r = 2;
n = 1;
dfr = 3*r^2 - 8*r - 11;
ddfr = 6*r - 8;
error = 0.04;

lambda = abs(ddfr/(2*dfr))

newError = lambda*error^(1+n)