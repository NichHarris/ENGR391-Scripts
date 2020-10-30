% Script to find number of iterations for certain absolute error
clc;
clear;

a = -2.0;
b = 0.5;
error = 0.1;

interations = (log10(b - a) - log10(error))/(log10(2)) - 1

disp('Round up iterations for acutal number');

