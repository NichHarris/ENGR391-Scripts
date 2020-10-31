clc;
clear;

% Least-Squares Definition: Find vector of parameters a0 to am where the
% Sum of squares of Ri are minimized. Ri = yi - f(xi,ai)

%USER: Must change matrix values, m and n values, cases (ao to an) values,
%and the specific function you are using

% Define matrices
xi = [-2 -1 0 1];
yi = [3 -2 2 4];
m = length(xi);

%a0 a1 ... am
cases = [ 0.14381 -2.43361 2.75876; 3.48748 -5.10462 2.40706; 3.3200 -2.3552 2.3632; 2.42728 -1.04772 -3.53956];
n = length(cases(:,1));
ri = zeros(n,m);

% Residuals calculation
for i = 1:n
    for j = 1:m
        ri(i,j) = yi(j) - (cases(i,1) + cases(i, 2).*exp(-(xi(j).^2)) + cases(i,3)*sin(xi(j)));
    end
end

% Mean Square Error
MSE = zeros(n, 1);
for i = 1:n
   for j = 1:m
       MSE(i, 1) = MSE(i, 1) + ri(i, j).^2;
   end
   MSE(i, 1) = MSE(i, 1)./m;
end
MSE