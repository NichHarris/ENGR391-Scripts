clc;
clear;
format long;
xi = [0 1/24 2/24 3/24 4/24 5/24 6/24 7/24 8/24 9/24 10/24 11/24 12/24 13/24 14/24 15/24 16/24 17/24 18/24 19/24 20/24 21/24 22/24 23/24];
yi = [15 16 15 15 15 14 14 13 13 14 13 14 15 16 18 20 21 21 21 20 19 17 16 15];
m = 24;

%xi = sin(2pix)
sinxi = zeros(1,m);
for i = 1:m
    sinxi(i) = sin(2*pi*xi(i));
end

%a1 = m*sum(xi*yi) - sum(xi)*sum(yi) / m*sum(xi^2) - sum(xi)^2
%a0 = (1/m)*sum(yi) - ai*(1/m)*sum(xi)
xiyi = 0;
sumxi = 0;
sumyi = 0;
sumxi2 = 0;
for i = 1:m
     xiyi = xiyi + sinxi(i).*yi(i);
     sumxi = sumxi + sinxi(i);
     sumyi = sumyi + yi(i);
     sumxi2 = sumxi2 + sinxi(i).^2;
end

a1 = (m*xiyi - sumxi*sumyi) / (m*sumxi2 - sumxi.^2);
a0 = (1/m)*sumyi - a1*(1/m)*sumxi;

a2  = (yi(1) - a0 - a1*sin(2*pi*xi(1)))/(cos(2*pi*xi(1)));

%a0 a1 ... am
cases = [a0 a1 a2];
n = 1;
ri = zeros(n,m);

% format: cases(i, 1) ...cases(i,n) = a0 to an
% x => xi(j)
% ri = yi(j) - (function)
% Residuals calculation
for i = 1:n
    for j = 1:m
        ri(i,j) = yi(j) - (a0 + a1*sin(2*pi*xi(j)) + a2*cos(2*pi*xi(j)));
    end
end

% Root Mean Square Error
RMSE = zeros(n, 1);
for i = 1:n
   for j = 1:m
      RMSE(i, 1) = RMSE(i, 1) + ri(i, j).^2;
   end
   RMSE(i, 1) = sqrt(RMSE(i, 1)./m);
end
disp(a0)
disp(a1)
disp(a2)
disp(RMSE)
