clc;
clf;
clear all;
function [yn, yorigin]=advance(xn, xorigin,k);
    n=(-xorigin):(size(xn,2)-xorigin-1);
    if(k>=(size(xn,2)-xorigin)) then
        yn=[xn,zeros(1,(k-(size(xn,2)-xorigin-1)))];
        yorigin=size(yn,2)-1;
        n1=(-yorigin):(0);
    else
        yn=xn;
        yorigin=xorigin+k;
        n1=(-yorigin):(size(yn,2)-yorigin-1);
    end
subplot(221);
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
plot2d3(n,xn,4);
title('x(n)');
xlabel('n');
ylabel('x(n)');
subplot(222);
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
plot2d3(n1,yn,4);
title('y(n)');
xlabel('n');
ylabel('y(n)');
endfunction

