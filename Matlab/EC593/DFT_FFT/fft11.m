x=[3,-1,0,1];
N=length(x);
n=[0:1:N-1];
k=[0:1:N-1];
WN=exp(-j*2*pi/N);
W=WN.^(n.*k);
X=x.*W;
disp(X);
f=(0:length(X)-1)*100/length(X);
m=abs(X);
subplot(2,1,1);
stem(f,m);
xlabel('f--->');
ylabel('mag--->');
title('Magnitude Response');
p=unwrap(angle(X));
subplot(2,1,2);
stem(f,p*180/pi);
xlabel('f--->');
ylabel('phase--->');
title('Phase Response');
