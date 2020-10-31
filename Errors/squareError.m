clc;
clear;

% Square Error = Sum(ri^2)
% MSE = SE/m
% RMSE = sqrt(MSE)

%USER: Must change matrix values, m and n values, cases (ao to an) values,
%and the specific function you are using

% Define matrices
xi = [-1 2 3];
yi = [3 2 1];
m = length(xi);

%a0 a1 ... am
cases = [-10 0];
n = 1;
ri = zeros(n,m);

% format: cases(i, 1) ...cases(i,n) = a0 to an
% x => xi(j)
% ri = yi(j) - (function)
% Residuals calculation
for i = 1:n
    for j = 1:m
        ri(i,j) = (cases(i, 1) + cases(i, 2)*xi(j)) - yi(j);
    end
end

% Square Error
SE = zeros(n, 1);
for i = 1:n
   for j = 1:m
       SE(i, 1) = SE(i, 1) + ri(i, j).^2;
   end
end
SE

% Mean Square Error
MSE = zeros(n, 1);
for i = 1:n
   for j = 1:m
       MSE(i, 1) = MSE(i, 1) + ri(i, j).^2;
   end
   MSE(i, 1) = MSE(i, 1)./m;
end
MSE

% Root Mean Square Error
RMSE = zeros(n, 1);
for i = 1:n
   for j = 1:m
      RMSE(i, 1) = RMSE(i, 1) + ri(i, j).^2;
   end
   RMSE(i, 1) = sqrt(RMSE(i, 1)./m);
end
RMSE