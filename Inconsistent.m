% Inconsistent equations
clc;
clear;

x=[-2 -1 0 1];
y=[3 -2 2 4];
A=[1 0.01832 -0.90930;1 0.36788 -0.84147;1 1 0;1 0.36788 0.84147];
A_t=A'*A;
A_tb = A'*y';
a=A_t\A_tb
