clc;
clf;
clear all;
l=5;
n=-l:l;
x=[zeros(1,l),0:l];
a=gca();
a.y_location='middle';
plot2d3(n,x);
xtitle('Unit ramp');
xlabel('n');
ylabel('x(n)');