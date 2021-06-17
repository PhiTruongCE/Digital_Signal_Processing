clc;
clf;
clear all;
n=-1:2;
y=[6,3,-2,1]
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
plot2d3(n,y,10);
title('y1(n)');
xlabel('n');
ylabel('y(n)');
