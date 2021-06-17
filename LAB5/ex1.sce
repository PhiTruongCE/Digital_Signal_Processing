clc;
clf;
clear all;
function [yn, yorigin]=convolution(xn, xorigin,hn, horigin);
    n=(-xorigin):(size(xn,2)-xorigin-1);
    n2=(-horigin):(size(hn,2)-horigin-1);
    yn=conv(xn,hn);
    yorigin=xorigin+horigin;
    if(xorigin>=horigin) then
        n3=(-yorigin):(size(yn,2)-yorigin-1);
    else
        n3=(-yorigin):(size(yn,2)-yorigin-1);
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
plot2d3(n2,hn,4);
title('h(n)');
xlabel('n');
ylabel('h(n)');
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