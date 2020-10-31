% Script to find backward and forward errors
% backward error = |f(xr)|
% forward error = |r-xr|
clc;
clear;

xr = 0.48;
r = 0.5;
fx = 2*xr - 1;

forward = abs(r-xr)
backward = abs(fx)

mag = forward/backward;
