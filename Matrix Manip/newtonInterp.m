clc;
clear

x = [1 2 4];
y = [2 -1 5];
m = length(x);

d(:,1) = y';
for j = 2:m
  for i = j:m
    d(i,j) = (d(i-1,j-1)-d(i,j-1))/(x(i-j+1)-x(i));
  end
end
b = diag(d)