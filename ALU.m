% Solve Ax = b using A=LU
clc;
clear;

b = [-1;-7;-6];
L = [0 0 0;0 0 0;0 0 0];
U = [0 0 0;0 0 0;0 0 0];

d = L\b
x = U\d
