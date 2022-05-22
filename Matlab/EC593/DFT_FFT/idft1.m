x=[3 3+2i 3 3-2i];
N=length(x);
m=[0 0 0 0];
for n=0:(N-1)
    for k=0:(N-1)
        m(n+1)=m(n+1)+(1/N)*x(k+1).*exp(((1i)*2*pi*k*n)/N);
    end
end
disp('Inverse Discrete Fourier Transform(IDFT) is');
disp(m)
t=(0:length(m)-1)*100/length(m);
subplot(2,1,1); 
stem(t,abs(Xk),'linewidth',1);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',11);
ylabel('\it|x(n)| \rightarrow','Fontweight','bold','Fontsize',11);
title('Magnitude Response','Fontweight','bold','Fontsize',12);
subplot(2,1,2);
stem(t,angle(Xk),'linewidth',1);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',11);
ylabel('\it\anglex(n) \rightarrow','Fontweight','bold','Fontsize',11);
title('Phase Response','Fontweight','bold','Fontsize',12);
grid on;