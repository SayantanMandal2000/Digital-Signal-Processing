clc;
clear all;
close all;
x=[1 3 2 4 4 2 3 1];
h=[1 -1 1];
y=conv(x,h);
disp('Linear Convolution:')
disp(y)
Nx=length(x);
M=length(h);
N=4;  % Length of each block
M1=M-1;
L=N-M1;
x=[zeros(1,M-1) x zeros(1,N-1)];
h=[h zeros(1,N-M)];
k=floor((Nx+M1-1)/(L));
Y=zeros(k+1,N);
disp('Individual Blocks:')
for i=0:k
    xk=x(i*L+1:i*L+N);
    disp(xk)
    Y(i+1,:)=cconv(xk,h,N);
end
disp('Intermediate Steps are:')
for i=0:k
    xk=x(i*L+1:i*L+N);
    Y(i+1,:)=cconv(xk,h,N);
    disp(Y(i+1,:))
end
Y=Y(:,M:N)';
disp('Linear Convolution using Overlap Save Method:');
y1=(Y(:))';
disp(y1)
