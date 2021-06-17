clc;
clf;
clear all;
function [yn, yorigin]=add(x1n, x1origin,x2n, x2origin);
    n=(-x1origin):(size(x1n,2)-x1origin-1);
    n2=(-x2origin):(size(x2n,2)-x2origin-1);
    if(x1origin>=x2origin) then
        x1=[x1n,zeros(1,x1origin-x2origin)];
        x2=[zeros(1,x1origin-x2origin),x2n];
        yn=x1+x2;
        yorigin=x1origin;
        n3=(-yorigin):(size(yn,2)-yorigin-1);
    else
        x2=[x2n,zeros(1,x2origin-x1origin)];
        x1=[zeros(1,x2origin-x1origin),x1n];
        yn=x1+x2;
        yorigin=x2origin;
        n3=(-yorigin):(size(yn,2)-yorigin-1);
    end
    
subplot(221);
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
plot2d3(n,x1n,4);
title('x1(n)');
xlabel('n');
ylabel('x1(n)');
subplot(222);
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
plot2d3(n2,x2n,4);
title('x2(n)');
xlabel('n');
ylabel('x2(n)');
subplot(223);
a=gca();
a.x_location='origin';
b=gca();
b.y_location='origin';
plot2d3(n3,yn,4);
title('y(n)');
xlabel('n');
ylabel('y(n)');

endfunction

