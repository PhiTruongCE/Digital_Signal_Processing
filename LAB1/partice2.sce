clc;
clf;
clear all;
l =5;
n=-l:l;
x=[zeros(1,l),ones(1,l+1)];
//a=gca();
//a.y_location="middle";
plot2d3(n,x);
title('Unit step');
xlabel('n');
ylabel('x');
