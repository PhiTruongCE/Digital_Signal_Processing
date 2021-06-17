clc;
clf;
clear all;
function [yn, yorigin]=convolution(xn, xorigin,hn, horigin);
    if(xorigin>=horigin) then
        x=[xn,zeros(1,xorigin-horigin)];
        h=[zeros(1,xorigin-horigin),hn];
        
    else
        h=[hn,zeros(1,horigin-xorigin)];
        x=[zeros(1,horigin-xorigin),xn];
    end
/*subplot(221);
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
*/
endfunction


