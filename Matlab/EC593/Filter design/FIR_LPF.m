clc;
clear all;
close all;
N=25; % 25-point Low-pass FIR Filter
wc=0.5*pi; % Cut-off Frequency= 0.5*pi rad
eps=0.001;
alpha=(N-1)/2;  
n=0:1:(N-1);
hd=sin(wc*(n-alpha+eps))./(pi*(n-alpha+eps));
w=0:0.01:pi;
wh=hamming(N); % Hamming window sequence
hn=hd.*wh';
h=freqz(hn,1,w); % System function
plot(w/pi,abs(h),'linewidth',1);
hold on;
wb=blackman(N); % Blackman window sequence
hn=hd.*wb';
h=freqz(hn,1,w); % System function
plot(w/pi,abs(h),'linewidth',1);
xlabel('Nomalised Frequency(\omega/\pi)--->');
ylabel('|H(\omega)|--->');
title('Magnitude Response');
legend({'Hamming Window','Blackman Window'},'Location','southwest');
grid on;
