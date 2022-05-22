clc;
clear all;
close all;
%% Plotting of 1st Sequence
x1=[1,0,1,2];   % 1st sequence
N1=length(x1);
n1=0:1:N1-1;
subplot(2,2,1); % Plotting of 1st sequence
stem(n1,x1,'b','linewidth',1);
axis([-1 4 -1 3]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_1[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_1[n]','Fontweight','bold','Color','b','Fontsize',12);
%% Plotting of 2nd Sequence
x2=[1,2,4,6];
N2=length(x2);
n2=0:1:N2-1;
subplot(2,2,2);
stem(n2,x2,'k','linewidth',1);
axis([-1 4 -1 7]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_2[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_2[n]','Fontweight','bold','Color','b','Fontsize',12);
%% Convolution of two signals
y=conv(x1,x2);
n=0:1:N1+N2-2;
subplot(2,1,2);
stem(n,y,'m','linewidth',1);
axis([-1 7 -2 15]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('y[n]=x_1[n]*x_2[n]','Fontweight','bold','Color','b','Fontsize',12);
