function [] = test()
  
  x=[0 1/24 2/24 3/24 4/24 5/24 6/24 7/24 8/24 9/24 10/24 11/24 12/24 13/24 14/24 15/24 16/24 17/24 18/24 19/24 20/24 21/24 22/24 23/24].';
  y=[15 16 15 15 15 14 14 13 13 14 13 14 15 16 18 20 21 21 21 20 19 17 16 15].';
  m=length(x);
  A = [x.^0 sin(2*pi.*x) cos(2*pi.*x)];
  A_t=A'*A;
  A_tb = A'*y;
  a=A_t\A_tb
  
  n = 1;
  ri = zeros(n,m);
  % format: cases(i, 1) ...cases(i,n) = a0 to an
  % x => xi(j)
  % ri = yi(j) - (function)
  % Residuals calculation
  for i = 1:n
      for j = 1:m
          ri(i,j) = y(j) - (a(1) + a(2)*sin(2*pi*x(j)) + a(3)*cos(2*pi*x(j)));
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
endfunction
