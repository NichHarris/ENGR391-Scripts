clc;
clear;

% Least-Squares Definition: Find vector of parameters a0 to am where the
% Sum of squares of Ri are minimized. Ri = yi - f(xi,ai)

%USER: Must change matrix values, m and n values, cases (ao to an) values,
%and the specific function you are using

% define matrices
xi = [-2 1 3];
yi = [2 -1 1];
m = length(xi);

%a0 a1 ... an
cases = [ 3.8 -4.5; -1.5 3.3];
n = length(cases(:,1));
ri = zeros(n,m);

% Residuals calculation
for i = 1:n
    for j = 1:m
        ri(i,j) = yi(j) - (cases(i, 1) + cases(i, 2).*sin(xi(j)));
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


