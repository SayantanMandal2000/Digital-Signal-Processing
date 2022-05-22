clc;
%% Generation of Unit Step Signal
n3=-5:1:5;
x1=[n3>=0];  %Unit Step Signal
subplot(2,2,1);
stem(n3,x1,'m','linewidth',1);
axis([-5 5 -1 2]);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\itu[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('Discrete Time Unit Step Sequence , \ity[n]=u[n]','Color','r','Fontsize',12);
grid on;
%% Generation of Sinusoidal Signal
n2=-1:0.1:1;
A=1;      %Amplitude of the sinusoidal signal
f=1;    %Frequency of the sinusoidal signal
x2=A*cos(2*pi*f*n2);   %Sinusoidal signal
subplot(2,2,2);
stem(n2,x2,'linewidth',1);
axis([-1 1 -2 2]);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\ity[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('Discrete Time Sinusoidal Sequence , \ity[n]=Acos(2\pifn)','Color','r','Fontsize',12);
grid on;
%% Generation of Increasing Exponential Sequence
subplot(2,2,3);
a=2;   % Increasing 
n3=-1:0.08:1;
x=exp(a.*n3); % Exponential Signal
stem(n3,x,'g','linewidth',1);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\ity[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('Discrete Time Increasing Exponential Sequence , \ity[n]=e^{an}','Color','r','Fontsize',12);
grid on;
%% Generation of Decreasing Exponential Sequence
subplot(2,2,4);
a=-2;    % Decreasing
x=exp(a.*n3); %Exponential Signal
stem(n3,x,'k','linewidth',1);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\ity[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('Discrete Time Decreasing Exponential Sequence , \ity[n]=e^{-an}','Color','r','Fontsize',12);
grid on;
