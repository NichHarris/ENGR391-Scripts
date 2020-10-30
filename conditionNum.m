% Script to find condition number of a matrix A
% Infinity Norm ||A||inf = maximum absolute row sum
% cond(A) = ||A||inf * ||A^-1||inf
clc;
clear;

A = [4 7 39 145; 7 39 145 723; 39 145 723 3337; 145 723 3337 16419];
% A = [2 2 -2; -1 3 5; -2 -4 4];
A1 = inv(A);
% k = max(sum(abs(A),2))*max(sum(abs(A1),2))


x = cond(A,inf)

% n = norm(A,inf)
% m = norm(A1, inf)

% y = n*m

disp('condition number ~= 1*10^n -> in this case n in our number of digits lost')
disp('                              so if we want 12 digits and lost 5, we need to use 17')