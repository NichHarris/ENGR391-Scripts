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
xi = [-2 0 1 2 3];
yi = [2.5 1.0 2.5 5.7 11.6];
m = length(xi);

% REMEMBER TO LINEARIZE IF IT IS NON-LINEAR

% y = a0*e^(ai*x^2) => lny = ln(ao) + (x^2)ln(a1)
% convert xi to xi^2 and yi to ln(yi)

% ***************************************
% convert to ln(yi)
lnyi = zeros(1,m)
for i = 1:m
    lnyi(i) = log(yi(i));
end

% ***************************************
% convert to x => x^2)
xi2 = zeros(m);
for i = 1:m
    xi2(i) = xi(i).^2;
end

% ***************************************
%a1 = m*sum(xi*yi) - sum(xi)*sum(yi) / m*sum(xi^2) - sum(xi)^2
%a0 = (1/m)*sum(yi) - ai*(1/m)*sum(xi)
xiyi = 0;
sumxi = 0;
sumyi = 0;
sumxi2 = 0;
for i = 1:m
     xiyi = xiyi + xi2(i).*lnyi(i);
     sumxi = sumxi + xi2(i);
     sumyi = sumyi + lnyi(i);
     sumxi2 = sumxi2 + xi2(i).^2;
end

a1 = (m*xiyi - sumxi*sumyi) / (m*sumxi2 - sumxi.^2);
a0 = (1/m)*sumyi - a1*(1/m)*sumxi;

% convert a0 to linear: ln(a0) -> a0
% ***************************************
a0 = exp(a0);

%a0 a1 ... am
cases = [a0 a1];
n = 1;
ri = zeros(n,m);

% ***************************************
% format: cases(i, 1) ...cases(i,n) = a0 to an
% x => xi(j)
% ri = yi(j) - (function)
% Residuals calculation
for i = 1:n
    for j = 1:m
        ri(i,j) = yi(j) - (log(cases(i,1)) + (xi(j).^2)*log(a1));
    end
end
a0
a1
