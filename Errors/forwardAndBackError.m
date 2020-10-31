% Script to find backward and forward errors
% backward error = |f(xr)|
% forward error = |r-xr|
clc;
clear;

##xr = 0.48;
##r = 0.5;
##fx = 2*xr - 1;

xr = 5.04;
r = 0.5;
fx = xr^3 - 4*xr^2 - 11*xr + 30;
dfx = 3*xr^2 - 8*xr - 11;

% if we have r use this:
absError = abs(r-xr);
% if we dont have r use this:
absError = abs(fx)/abs(dfx);

forward = abs(r-xr)
backward = abs(fx)

mag = forward/backward
