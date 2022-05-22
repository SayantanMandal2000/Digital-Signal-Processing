clc;
clear all;
close all
xn=[1 2 3 4];   % Discrete time sequence
N=length(xn);
Xk=[0 0 0 0];
t=(0:length(Xk)-1)*100/length(Xk);
for k=0:(N-1)
    for n=0:(N-1)
        Xk(k+1)=Xk(k+1)+xn(n+1)*exp(((-1i)*2*pi*k*n)/N);
    end
end
disp('Discrete Fourier Transform(DFT) is');
disp(Xk);   % Discrete Fourier Transform 
subplot(2,1,1); 
stem(abs(Xk),'linewidth',1);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',11);
ylabel('\it|X(k)| \rightarrow','Fontweight','bold','Fontsize',11);
title('Magnitude Response','Fontweight','bold','Fontsize',12);
subplot(2,1,2);
stem(angle(Xk),'linewidth',1);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',11);
ylabel('\it\angle(X(k)) \rightarrow','Fontweight','bold','Fontsize',11);
title('Phase Response','Fontweight','bold','Fontsize',12);
grid on;