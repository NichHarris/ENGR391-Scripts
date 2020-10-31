% Script to find vandermonde polynomials

clc;
clear;

% Define matrices
x = [1; 2; 4];
y = [-12; -36.8; -117.6];
m = length(x);

% script
A = zeros(m, 'double');
for j = 1:m
    for i = 1:m
        A(i,j) = x(i).^(j-1);
    end
end
% A = [x.^0 x.^1 x.^2 ...]
A
% a0 to am-1
a = A\y
