function [Xk]=dft(xn,N)
n=[0:1:N-1];   %Row vector for n
k=[0:1:N-1];   %Row vector for k
WN=exp(-j*2*pi/N);   %Wn Factor
W=WN.^(n.*k);  % DFT Matrix
Xk=xn*W;  %Row vector for DFT coefficient
xn=[3,-1,0,1];
N=length(xn);
X=dft(xn,N);
disp(X)