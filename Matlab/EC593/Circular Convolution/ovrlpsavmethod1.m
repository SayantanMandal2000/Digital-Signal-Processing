clc;
clear all;
close all;
x=[1 0 1 2 -1];
h=[1 2 4 6];
y=conv(x,h);
disp('Linear Convolution:')
disp(y)
y1=overlapsave(x,h)
function y=overlapsave(x,h)
Nx=length(x);
M=length(h);
%N=M+Nx-1;
N=max(Nx,M);
M1=M-1;
L=N-M1;
x=[zeros(1,M-1) x zeros(1,N-1)];
h=[h zeros(1,N-M)];
k=floor((Nx+M1-1)/(L));
Y=zeros(k+1,N);
for i=0:k
    xk=x(i*L+1:i*L+N);
    Y(i+1,:)=cconv(xk,h,N);
end
Y=Y(:,M:N)';
disp('Linear Convolution using Overlap Save Method:');
y=(Y(:))';
end
