clc;
n=-3:1:4;
figure(1);
%% Generation of original Sequence
x=n.*[n>=0];  %Ramp Sequence
subplot(2,2,1);
stem(n,x,'b','linewidth',1);
axis([-5 5 -1 5]);
xlabel('\itn \rightarrow','Fontweight','bold');
ylabel('\ity[n] \rightarrow','Fontweight','bold');
title('\ity[n]=x[n]','Fontsize',10);
grid on;
%% Shifting (advancing) Sequence
subplot(2,2,2);
stem(n+2,x,'b','linewidth',1);
axis([-5 6 -1 5]);
xlabel('\itn \rightarrow','Fontweight','bold');
ylabel('\ity_1[n] \rightarrow','Fontweight','bold');
title('\ity_1[n]=x[n-2]','Fontsize',12);
grid on;
%% Shifting (delaying) Sequence
subplot(2,2,3);
stem(n-2,x,'b','linewidth',1);
axis([-5 5 -1 5]);
xlabel('\itn \rightarrow','Fontweight','bold');
ylabel('\ity_2[n] \rightarrow','Fontweight','bold');
title('\ity_2[n]=x[n+2]','Fontsize',10);
grid on;
%% Time reversal Sequence
subplot(2,2,4);
stem(-n,x,'b','linewidth',1);
axis([-5 5 -1 5]);
xlabel('\itn \rightarrow','Fontweight','bold');
ylabel('\ity_3[n] \rightarrow','Fontweight','bold');
title('\ity_3[n]=x[-n]','Fontsize',10);
grid on;
%% Time Scaling  x[2n]
figure(2);
subplot(2,1,1);
stem((2.*n),x,'b','linewidth',1);
axis([-5 5 -1 5]);
xlabel('\itn \rightarrow','Fontweight','bold');
ylabel('\ity_4[n] \rightarrow','Fontweight','bold');
title('\ity_4[n]=x[2n]','Fontsize',10);
grid on;
%% Time Scaling  x[n/2]
subplot(2,1,2);
stem((n./2),x,'b','linewidth',1);
axis([-5 5 -1 5]);
xlabel('\itn \rightarrow','Fontweight','bold');
ylabel('\ity_4[n] \rightarrow','Fontweight','bold');
title('\ity_5[n]=x[n/2]','Fontsize',10);
grid on;