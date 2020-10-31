% Inconsistent equations

x=[-2 -1 0 1];
y=[3 -2 2 4];
n = length(x);
m = length(x)-1;
A = zeros(n,m)
for i = 1:n
  A(i,1) = 1;
  A(i,2) = exp(-(x(i)^2));
  A(i,3) = sin(x(i));
end
A_t=A'*A;
A_tb = A'*y';
a=A_t\A_tb