% Used for PA=LU decomp 
% Used for Gauss Elimination

clc;
clear;

A = [1 -1 3; -1 0 -2; 2 2 4];

[L U P] = lu(A)
PA = P*A
LU = L*U