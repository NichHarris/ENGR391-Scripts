clc;
clear;
xi = [0 1/24 2/24 3/24 4/24 5/24 6/24 7/24 8/24 9/24 10/24 11/24 12/24 13/24 14/24 15/24 16/24 17/24 18/24 19/24 20/24 21/24 22/24 23/24];
yi = [15 16 15 15 15 14 14 13 13 14 13 14 15 16 18 20 21 21 21 20 19 17 16 15];
m = 24;



A = [xi.^0 sin(2*pi.*xi) cos(2*pi.*xi)]
At = transpose(A)

ax = (At*A)\(At*yi)
r = (A*ax) - yi

RMSE = norm(r,2)/sqrt(length(xi))

hold on
plot(xi, yi)
plot(, yi)