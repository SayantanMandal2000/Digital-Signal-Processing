clc;
n=-3:1:3;
figure(1);
%% Generation of 1st Sequence
x1=[0,-2,3,2,-3,1,0];   %1st sequence
subplot(2,1,1);
stem(n,x1,'k','linewidth',1);
axis([-4 4 -4 5]);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\ity[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('\ity[n]=x_1[n]','Color','b','Fontsize',12);
grid on;
%%  Generation of 2nd Sequence
x2=[1,-3,0,4,-3,2,-1];   %2nd sequence
subplot(2,1,2);
stem(n,x2,'linewidth',1);
axis([-4 4 -4 5]);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\ity[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('\ity[n]=x_2[n]','Fontsize',12);
grid on;
figure(2);
%%  Addition of two sequences
y2=zeros(1,length(n));
for i=1:length(n)
    y2(i)=x1(i)+x2(i);
end
subplot(3,1,1);
stem(n,y2,'r','linewidth',1);
axis([-4 4 -8 8]);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\ity_1[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('\ity_1[n]=x_1[n]+x_2[n]','Color','k','Fontsize',12);
grid on;
%%  Subtraction of two sequences
y2=zeros(1,length(n));
for i=1:length(n)
    y2(i)=x1(i)-x2(i);
end
subplot(3,1,2);
stem(n,y2,'k','linewidth',1);
axis([-4 4 -4 5]);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\ity_2[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('\ity_2[n]=x_1[n]-x_2[n]','Color','r','Fontsize',12);
grid on;
%%  Multiplication of two sequences
y3=zeros(1,length(n));
for i=1:length(n)
    y3(i)=x1(i).*x2(i);
end
subplot(3,1,3);
stem(n,y3,'m','linewidth',1);
axis([-4 4 -2 10]);
xlabel('\itn \rightarrow','Fontweight','bold','Fontsize',13);
ylabel('\ity_3[n] \rightarrow','Fontweight','bold','Fontsize',13);
title('\ity_3[n]=x_1[n]x_2[n]','Color','b','Fontsize',12);
grid on;
