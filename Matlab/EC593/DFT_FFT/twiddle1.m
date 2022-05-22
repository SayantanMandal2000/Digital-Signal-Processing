N=8;
W=exp(((-1i)*2*pi*k*n)/N);
for r=1:8
    fprintf('W(%d)=%f+(%f)j\n',r-1,real(W^(r-1)),imag(W^(r-1)));
end
for r=1:8
    fprintf('|W(%d)|=%f\n',r-1,abs(W^(r-1)));
    fprintf('angleW(%d)=%f\n',r-1,angle(W^(r-1)));
end
disp('Symmetric Property for k=2:')
disp('W.^(2+(N/2))=')
disp(W.^(2+(N/2)))
disp('-W.^2=')
disp(-W.^2)
disp('Periodic Property for k=2:')
disp('W.^(2+N)=')
disp(W.^(2+N))
disp('W.^2=')
disp(W.^2)
t=(0:length(W)-1)*100/length(W);
subplot(2,1,1); 
stem(t,abs(W));
xlabel('n');
ylabel('|WN|');
title('Magnitude');
subplot(2,1,2);
stem(t,angle(W));
xlabel('n');
ylabel('\angle(WN)');
title('Phase');