clc;
clear;

x = 2;
gx = 1 + 1/x;


for i = 1:7
	xi = x;
	x = 1 + 1/xi;
    interation = i
	relError = abs((x - xi)/x)
	absError = abs(x-xi)
end