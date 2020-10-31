% Script to find the coefficients of a system a0, a1

clc;
clear;
format long
% TIP: Put the equation into linear form
% IMPORTANT: Use squareError File to compute SE, MSE, RMSE
% Use the a0 and a1 found here
% ********YOU MUST USE THE ORIGINAL FUNCTION (NOT LINEARIZED) FOR SE, MSE, RMSE**********


% ***************************************
% define variables
xi = [-7 -5 -1 0 2 5 6];
yi = [15 12 5 2 0 -5 -9];
m = length(xi);

% ***************************************
%a1 = m*sum(xi*yi) - sum(xi)*sum(yi) / m*sum(xi^2) - sum(xi)^2
%a0 = (1/m)*sum(yi) - ai*(1/m)*sum(xi)
xiyi = 0;
sumxi = 0;
sumyi = 0;
sumxi2 = 0;
for i = 1:m
     xiyi = xiyi + xi(i)*yi(i);
     sumxi = sumxi + xi(i);
     sumyi = sumyi + yi(i);
     sumxi2 = sumxi2 + xi(i).^2;
end

a1 = (m*xiyi - sumxi*sumyi) / (m*sumxi2 - sumxi.^2)
a0 = (1/m)*sumyi - a1*(1/m)*sumxi
cases=[a0 a1];
n = 1;
ri = zeros(n,m);

% format: cases(i, 1) ...cases(i,n) = a0 to an
% x => xi(j)
% ri = yi(j) - (function)
% Residuals calculation
for i = 1:n
    for j = 1:m
        ri(i,j) = yi(j) - (cases(i, 1) + cases(i, 2)*xi(j));
    end
end

% Square Error
SE = zeros(n, 1);
for i = 1:n
   for j = 1:m
       SE(i, 1) = SE(i, 1) + ri(i, j).^2;
   end
end
disp(SE)

% Mean Square Error
MSE = zeros(n, 1);
for i = 1:n
   for j = 1:m
       MSE(i, 1) = MSE(i, 1) + ri(i, j).^2;
   end
   MSE(i, 1) = MSE(i, 1)./m;
end
disp(MSE)

% Root Mean Square Error
RMSE = zeros(n, 1);
for i = 1:n
   for j = 1:m
      RMSE(i, 1) = RMSE(i, 1) + ri(i, j).^2;
   end
   RMSE(i, 1) = sqrt(RMSE(i, 1)./m);
end
disp(RMSE)