% script for calculating lagrange polynomials

clc;
clear;

x = [-1; 2; 3];
y = [2; -1; 4];
m = length(x);

% script
L = ones(1,m);

for i = 1:m
    for j = 1:m
        if j ~= i
            L(i) = L(i)./(x(i) - x(j));   
        end
    end
	% L(i) = y(i)*L(i);
end

% display lagrange coefficients 
L