clc;
clear all;
close all;
alpha_p=0.4; % Passband Attenuation = 0.4dB
alpha_s=30;  % Stopband Attenuation = 30dB
f_p=400; % Passband Frequency = 400Hz
f_s=800; % Stopband Frequency = 800Hz
fs=2000; % Sampling Frequency = 2000Hz
% Normalization of Frequencies
om_p=2*f_p/fs;
om_s=2*f_s/fs;
% Order of the Butterworth LPF
[n,Wn]=buttord(om_p,om_s,alpha_p,alpha_s);
[a,b]=butter(n,Wn); % Designing of n-th order butterworth filter
w=0:0.01:pi;
[h,omega]=freqz(a,b,w); % System function of LPF
mag=abs(h);
phase=angle(h);
subplot(2,1,1);
plot(omega/pi,20*log(mag),'linewidth',1);
xlabel('Nomalised Frequency(\omega/\pi)---');
ylabel('Gain |H(\omega)|(dB)--->');
title('Magnitude Response');
grid on;
subplot(2,1,2);
plot(omega/pi,phase,'linewidth',1);
xlabel('Nomalised Frequency(\omega/\pi)---');
ylabel('\angleH(\omega)(rad)--->');
title('Phase Response');
grid on;
