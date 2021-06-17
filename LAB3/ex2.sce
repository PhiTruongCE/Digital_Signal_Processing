clc;
clf;
clear all;

n=-1:1;
x=[1,3,-2];
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
subplot(221);
plot2d3(n,x,4);
title('x(n)');
xlabel('n');
ylabel('x(n)');


n=-1:1;
xe=[-1/2,3,-1/2];
subplot(222);
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
plot2d3(n,xe,4);
title('xe(n)');
xlabel('n');
ylabel('xe(n)');

n=-1:1;
xn=[3/2,0,3/2];
subplot(223);
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
plot2d3(n,xn,4);
title('xo(n)');
xlabel('n');
ylabel('xo(n)');
