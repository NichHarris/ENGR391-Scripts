% Inconsistent equations

x=[-2 -1 0 1];
y=[3 -2 2 4];
n = length(x);
m = length(x)-1;
A = zeros(n,m);
for i = 1:n
  A(i,1) = 1;
  A(i,2) = exp(-(x(i)^2));
  A(i,3) = sin(x(i));
end
A_t=A'*A;
A_tb = A'*y';
a=A_t\A_tb

n = 1;
m = length(x);
ri = zeros(n,m);
% format: cases(i, 1) ...cases(i,n) = a0 to an
% x => xi(j)
% ri = yi(j) - (function)
% Residuals calculation
for i = 1:n
    for j = 1:m
        ri(i,j) = y(j) - (a(1) + a(2)*exp(-(x(j)^2)) + a(3)*sin(x(j)));
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
disp(RMSE)