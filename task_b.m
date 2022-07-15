clc;
clear;
close all;

%% b-1))
%%

load handel.mat
filename = 'handel.wav';
audiowrite(filename,y,Fs);

[y,Fs] = audioread('handel.wav');

sound(y,Fs);

%% b-2))
%%

t = (0:numel(y)-1)/Fs;

figure;
plot(t, y)
grid
xlabel('t')
ylabel('y(t)')
legend('y(t)')
title('𝑦(𝑡) sound')

