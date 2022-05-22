clc;
clear all;
close all;
syms z;
%% Z Transform of 1st Sequence
x=[3 2 -1 1];
for i=1:length(x)
    zt(i)=[x(i).*z.^-(i-1)];
end
Xz=sum(zt);
disp(Xz);
%% Z Transform of 2nd Sequence
y=[1 -2 1 0];
for i=1:length(y)
    zt1(i)=[y(i).*z.^-(i-1)];
end
Yz=sum(zt1);
disp(Yz);
%% Proof of Linearity Property of Z Transform
a=2;
b=3;
m=((a.*x)+(b.*y));
for i=1:length(m)
    zt2(i)=[m(i).*z.^-(i-1)];
end
Mz=sum(zt2);
disp(Mz);
Mz1=((a.*Xz)+(b.*Yz));
disp(Mz1);
%% Proof of Shifting Property of Z Transform
x1=[0 3 2 -1 1];   % x1(n)=x(n-1)
for i=1:length(x1)
    zt3(i)=[x1(i).*z.^-(i-1)];
end
Xz1=sum(zt3);
disp(Xz1);
Xz2=Xz.*z.^-1;   %X1(z)=X(z)z^-1
disp(Xz2);
%% Proof of Convolution Property of Z Transform
x2=conv(x,y);
for i=1:length(x2)
    zt4(i)=[x2(i).*z.^-(i-1)];
end
Xz2=sum(zt4);
disp(Xz2);
%Xz3=Xz.*Yz;
Xz3=expand(Xz*Yz);
disp(Xz3);
