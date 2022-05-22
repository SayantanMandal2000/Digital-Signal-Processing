clc;
clear all;
close all;
%% Plotting of 1st Sequence
x1=[1,2,3,4];   % 1st sequence
N1=length(x1);
n1=0:1:N1-1;
subplot(2,2,1); % Plotting of 1st sequence
stem(n1,x1,'b','linewidth',1);
xlim([-1 N1]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_1[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_1[n]','Fontweight','bold','Color','b','Fontsize',12);
%% Plotting of 2nd Sequence
x2=[4,3,2,1];
N2=length(x2);
n2=0:1:N2-1;
subplot(2,2,2);
stem(n2,x2,'k','linewidth',1);
xlim([-1 N2]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_2[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_2[n]','Fontweight','bold','Color','b','Fontsize',12);
%% Cross co-relation of two signals
y=xcorr(x1,x2);
N=length(y);
n=0:1:N-1;
subplot(2,1,2);
stem(n,y,'m','linewidth',1);
xlim([-1 N]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('\it\gamma_{\itx_1x_2}(\itl)=\Sigmax_1[n]x_2[n-l]','Fontweight','bold','Color','b','Fontsize',12);
