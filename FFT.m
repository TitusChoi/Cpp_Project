close all;
clear all;
clc;

Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1024;             % Length of signal
t = (0:L-1)*T;        % Time vector

Y = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

W = fft(Y);

P2 = abs(W/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')