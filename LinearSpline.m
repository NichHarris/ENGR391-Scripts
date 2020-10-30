% Linear spline
% say x=[-9.1,5,9.8],y=[-60.29,8.8,40], find x=3.9

x = 3.9;
x_i = 5;
x_i1 = -9.1;
y_i1 = -60.29;
y_i = 8.8;

f = ((x-x_i)/(x_i1-x_i))*y_i1 + ((x-x_i1)/(x_i-x_i1))*y_i