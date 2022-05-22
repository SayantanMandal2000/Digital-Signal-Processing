clc;
clear all;
close all;
x=[3 -1 0 1 3 2 0 1 2 1];
h=[1 1 1];
L=4; % Length of each block
disp('Linear Convolution value:')
disp(conv(x,h))
n=length(x);
m=length(h);
z=1;
for i=1:4
    if i~=4
        for j=1:m
            X(i,j)=x(((i-1)*m)+1+(j-1));
        end
        for j=m+1:5
            X(i,j)=0;
        end
    else
        for j=1:5
            if j==1
                X(i,j)=x(n);
            else
                X(i,j)=0;
            end
        end
    end
end
disp('Subsets of sequense: ')
disp(X)
disp('Intermediate steps:')
y1=cconv(X(1,1:5),h,5);
disp(y1)
y2=cconv(X(2,1:5),h,5);
disp(y2)
y3=cconv(X(3,1:5),h,5);
disp(y3)
y4=cconv(X(4,1:5),h,5);
disp(y4)
Y=[y1(1:m),y1(m+1:end)+y2(1:m-1),y2(m),y2(m+1:end)+y3(1:m-1),y3(m),y3(m+1:end)+y4(1:m-1),y4(m:end)];
Y=Y(1:n+m-1);
disp('Convolution by Overlap Add Method: ')
disp(Y)
