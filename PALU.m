% Solve Ax = b using PA=LU
clc;
clear;

A = [-3 2 -1;6 -6 7;3 -4 4];
b = [-1;-7;-6];

[ L U P ] = lu(A)

d = L\(P*b)

x = U\d
