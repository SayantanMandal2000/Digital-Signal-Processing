clc;
clear all;
close all;
x=[3 -1 0 1 3 2 0 1 2 1];
h=[1 1 1];
L=5;
disp('Linear Convolution value:')
disp(conv(x,h))
M=length(h);
lx=length(x);
r=rem(lx,L);
x1=[x zeros(1,L-r)];
lx1=length(x1);
nr=length(x1)/L;
h1=[h zeros(1,L-1)];
for k=1:nr
    M1(k,:)=x1(((k-1)*L+1):k*L);
    M2(k,:)=[M1(k,:) zeros(1,M-1)];
    M3(k,:)=ifft(fft(M2(k,:)).*fft(h1));
    M4(k,:)=[zeros(1,(k-1)*L) M3(k,:) zeros(1,(nr-k)*L)];
end
y=sum(M4);
disp('Convolution by Overlap Add Method: ')
disp(y)