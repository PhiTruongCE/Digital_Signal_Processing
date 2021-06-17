clc;
clf;
clear all;
function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    k = list(1,zeros(1,size(xn,2)));
    for i=1:size(xn,2)
        k(i) = xn(i)*hn;
        k(i) = [zeros(1,i-1),k(i),zeros(1,size(xn,2)-i)];
    end
    yn = zeros(1,size(xn,2)+size(hn,2)-1);
    for i=1:size(xn,2)
        yn = yn + k(i);
    end
    yorigin = xorigin + horigin;
    n1 = (-xorigin):(-xorigin+size(xn,2)-1);
    n2 = (-horigin):(-horigin+size(hn,2)-1);
    n3 = (-yorigin):(-yorigin+size(yn,2)-1);  
subplot(221);
a=gca();
a.y_location='origin';
a.x_location='origin';
plot2d3(n1,xn,4);
xlabel('n');
ylabel('x(n)');
title('Discrete-time signal x(n)');
subplot(222);
a=gca();
a.y_location='origin';
a.x_location='origin';
plot2d3(n2,hn,4);
xlabel('n');
ylabel('h(n)');
title('Discrete-time signal h(n)');
subplot(223);
a=gca();
a.y_location='origin';
a.x_location='origin';
plot2d3(n3,yn,4);
xlabel('n');
ylabel('y(n)');
title('Discrete-time signal y(n)');
endfunction



