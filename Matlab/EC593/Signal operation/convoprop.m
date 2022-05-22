clc;
clear all;
close all;
figure(1);
%% Plotting of 1st Sequence
x1=[1,0,1,2];   % 1st sequence
N1=length(x1);
n1=0:1:N1-1;
subplot(1,3,1); % Plotting of 1st sequence
stem(n1,x1,'b','linewidth',1);
xlim([-1 N1]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_1[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_1[n]','Fontweight','bold','Color','b','Fontsize',12);
%% Plotting of 2nd Sequence
x2=[-1,3,2,4];
N1=length(x2);
n1=0:1:N1-1;
subplot(1,3,2);
stem(n1,x2,'k','linewidth',1);
xlim([-1 N1]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_2[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_2[n]','Fontweight','bold','Color','b','Fontsize',12);
%% Plotting of 3rd Sequence
x3=[-1,-3,-1,4];
N1=length(x3);
n1=0:1:N1-1;
subplot(1,3,3);
stem(n1,x3,'m','linewidth',1);
xlim([-1 N1]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\itx_3[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('x_3[n]','Fontweight','bold','Color','b','Fontsize',12);
%% Commutative Law    x1*x2=x2*x1
figure(2);
% Calculation of x1*x2
y1=conv(x1,x2);   %x1*x2
N2=length(y1);
n2=0:1:N2-1;
subplot(1,2,1);
stem(n2,y1,'k','linewidth',1);
xlim([-1 N2]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity_1[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('y_1[n]=x_1[n]*x_2[n]','Fontweight','bold','Color','k','Fontsize',12);
% Calculation of x2*x1
y2=conv(x2,x1);   %x2*x1
N2=length(y2);
n2=0:1:N2-1;
subplot(1,2,2);
stem(n2,y2,'k','linewidth',1);
xlim([-1 N2]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity_2[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('y_2[n]=x_2[n]*x_1[n]','Fontweight','bold','Color','k','Fontsize',12);
%% Associative Law    [x1*x2]*x3=x1*[x2*x3]
figure(3);
% Calculation of [x1*x2]*x3
y3=conv(y1,x3);
N3=length(y3);
n3=0:1:N3-1;
subplot(1,2,1);
stem(n3,y3,'b','linewidth',1);
xlim([-1 N3]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity_3[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('y_4[n]=(x_1[n]*x_2[n])*x_3[n]','Fontweight','bold','Color','k','Fontsize',12);
% x2*x3
y4=conv(x2,x3);
% Calculation of x1*[x2*x3]
y5=conv(x1,y4);
N3=length(y3);
n3=0:1:N3-1;
subplot(1,2,2);
stem(n3,y5,'b','linewidth',1);
xlim([-1 N3]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity_3[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('y_5[n]=x_1[n]*(x_2[n]*x_3[n])','Fontweight','bold','Color','k','Fontsize',12);
%% Distributive Law    x1*[x2+x3]=[x1*x2]+[x1*x3]
figure(4);
% Calculation of x1*[x2+x3]
x4=x2+x3;
y6=conv(x1,x4);
N4=length(y6);
n4=0:1:N4-1;
subplot(1,2,1);
stem(n4,y6,'r','linewidth',1);
xlim([-1 N4]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity_[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('y_6[n]=x_1[n]*(x_2[n]+x_3[n])','Fontweight','bold','Color','b','Fontsize',12);
% Calculation of [x1*x2]+[x1*x3]
y7=conv(x1,x3);
y8=y1+y7;
N4=length(y8);
n4=0:1:N4-1;
subplot(1,2,2);
stem(n4,y8,'r','linewidth',1);
xlim([-1 N4]);
grid on;
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',10);
ylabel('\ity_[n] \rightarrow','Fontweight','bold','Fontsize',10);
title('y_6[n]=x_1[n]*(x_2[n]+x_3[n])','Fontweight','bold','Color','b','Fontsize',12);
