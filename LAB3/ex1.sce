clc;
clf;
clear all;
l=5;
n=-5:5;
u=[zeros(1,l),0:l];
a=gca();
a.y_location='middle';
plot(n,u);
xtitle('Unit ramp signal');
xlabel('n');
ylabel('u(n)');