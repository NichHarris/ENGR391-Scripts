function [x_i, i] = Fixed(x_i, i)
  
  i = i + 1
  x = x_i
  
  % replace this with fixed point formula
  x_i = 1 + 1/x
  
  error_rel = abs((x_i - x)/x_i)
  
endfunction

%{

i = 0;
x_i = 0.6;
[x_i, i] = Fixed(x_i, i);

%}