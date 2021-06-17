clc;
clf;
clear all;
t=0:1/1000:5/50;
x=3*sin(100*%pi*t);
subplot(221);
plot(x);

title('1.2.1');
xlabel('t');
ylabel('x(t)');

n=0:1:30;
x=3*sin(%pi*n/3);
subplot(222);
plot2d3(x);
plot(x,'.');
title('1.2.2');
xlabel('n');
ylabel('x(n)');

n=0:1:30;
x=3*sin(%pi*n/3);
xq=fix(x/(1/10))*(1/10);
subplot(223);
plot2d2(x);
title('1.2.3');
xlabel('n');
ylabel('xq(n)');
