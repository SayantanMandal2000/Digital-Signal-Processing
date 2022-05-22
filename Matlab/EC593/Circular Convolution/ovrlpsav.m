clc;
close all;
clear all;
%x1=[1 0 1 2 -1];  % 1st sequence
x1=[0 1 2 3 4 5 6 7 8 9 10];
x2=[1 0 -1];
%x2=[1 2 4 6];   %2nd sequence
N=6;
y=ovrlpsav(x1,x2,N);
disp(y)
function [y]=ovrlpsav(x,h,N)
Lenx=length(x);
M=length(h);
M1=M-1;
L=N-M1;
h=[h zeros(1,N-M)];
x=[zeros(1,M1),x,zeros(1,N-1)];
K=floor((Lenx+M1-1)/(L)));
Y=zeros(K+1,N);
for k=0:K
    xk=x(k*L+1:k*L+N);
    Y(k+1,:)=cconv(xk,h,N);
end
Y=Y(:,M:N)';
y=(Y(:))';
end
