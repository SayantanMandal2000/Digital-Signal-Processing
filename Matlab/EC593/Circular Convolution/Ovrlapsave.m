clc;
clear all;
close all;
x=[3 -1 0 1 3 2 0 1 2 1];
h=[1 1 1];
y=conv(x,h);
disp('Linear Convolution:')
disp(y)
m=length(h);
x1=[0 0 3 -1 0]
l=length(x1);
x2=[-1 0 1 3 2]
x3=[3 2 0 1 2]
x4=[1 2 1 0 0]
N=max(l,m);
y1=cconv(x1,h,N);
y2=cconv(x2,h,N);
y3=cconv(x3,h,N);
y4=cconv(x4,h,N);
disp('The intermediate steps:')
p=[y1;y2;y3;y4];
disp(p)
f=p(:,3:5);
disp('Result:')
disp(f)
disp('Result of Convolution')
y1=(f(:))';
disp(y1)
