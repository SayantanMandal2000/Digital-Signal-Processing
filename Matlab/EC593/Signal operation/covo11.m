clc;
clear all;
close all;
x1=[1,0,1,2];   % 1st sequence
N1=length(x1);
n1=0:1:N1-1;
subplot(2,2,1); % Plotting of 1st sequence
stem(n1,x1,'b','linewidth',1);
axis([-1 4 -1 3]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_1[1] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_1[n]','Fontweight','bold','Fontsize',13);
x2=[1,2,4,6];
N2=length(x2);
n2=0:1:N2-1;
subplot(2,2,2);
stem(n2,x2);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_1[1] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_1[n]','Fontweight','bold','Fontsize',13);
xlabel('n-->');
ylabel('x_2[n]--->');
title('x_2[n]');
y=conv(x1,x2);
n=0:1:N1+N2-2;
subplot(2,1,2);
stem(n,y);
xlabel('n-->');
ylabel('y[n]--->');
title('y[n]');
