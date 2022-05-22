clc;
clear all;
close all;
%% Plotting of the Sequence
x=[3,5,8,7];   % sequence
N1=length(x);
n1=0:1:N1-1;
subplot(2,1,1); % Plotting of  sequence
stem(n1,x,'b','linewidth',1);
xlim([-1 N1]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('x[n]=[3,5,8,7]','Fontweight','bold','Color','r','Fontsize',12);
%% Plotting of ACF
y=xcorr(x,x);    % ACF
N2=length(y);
n2=0:1:N2-1;
subplot(2,1,2); % Plotting of ACF sequence
stem(n2,y,'r','linewidth',1);
xlim([-1 N2]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('\it\gamma_{\itxx}(\itl)=\Sigmax[n]x[n-l]','Fontweight','bold','Color','b','Fontsize',12);
