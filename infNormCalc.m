% Script to find iunf norm of a matrix
% Infinity Norm ||A||inf = maximum absolute row sum
clc;
clear;


% A = [6.9 8.4 -3.8; 8.7 1.0 -4.0; -1.2 6.7 -2.5];
A = [7.2;3.1;-7.8;-0.4];
rowSum = sum(abs(A), 2)
infNorm = max(abs(rowSum))