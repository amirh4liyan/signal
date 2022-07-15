clc;
clear;
close all;

%% a-1))
%%

Ts = 1/40000;

t = 0:Ts:0.01;

x1 = 3*cos(2*pi*10000*t);

x2 = 2*sin(2*pi*6000*t);

x3 = cos(2*pi*4000*t+pi/4);

figure;
plot(t, x1)
grid
xlabel('t')
ylabel('x_1(t)')
legend('x_1(t)')
title('𝑥_1(𝑡) = 3cos(2𝜋10000𝑡)')

figure;
plot(t, x1)
grid
xlabel('t')
ylabel('x_2(t)')
legend('x_2(t)')
title('x_2(𝑡) = 2𝑠𝑖𝑛(2𝜋6000𝑡)')

figure;
plot(t, x1)
grid
xlabel('t')
ylabel('x_3(t)')
legend('x_3(t)')
title('x_3(𝑡) = cos(2𝜋4000𝑡+𝜋/4)')

%% a-2))
%%

L = numel(t)-1;
f = 1/Ts*(0:(L))/L;

Y1 = fft(x1);

figure;
plot(f, abs(Y1))
grid
xlabel('f')
ylabel('X_1(f)')
legend('X_1(f)')
title('𝑥_1(f) = ft(3cos(2𝜋10000𝑡))')


Y2 = fft(x2);

figure;
plot(f, abs(Y2))
grid
xlabel('f')
ylabel('X_2(f)')
legend('X_2(f)')
title('𝑥_2(f) = ft(2𝑠𝑖𝑛(2𝜋6000𝑡))')


Y3 = fft(x3);

figure;
plot(f, abs(Y3))
grid
xlabel('f')
ylabel('X_3(f)')
legend('X_3(f)')
title('𝑥_3(f) = ft(cos(2𝜋4000𝑡+𝜋/4))')

%% a-3))
%%

y = x1+x2+x3;

figure;
plot(t, y)
grid
xlabel('t')
ylabel('y(t)')
legend('y(t)')
title('𝑦(𝑡)=𝑥1(𝑡)+𝑥2(𝑡)+𝑥3(𝑡)')


Y = fft(y);

figure;
plot(f, abs(Y))
grid
xlabel('f')
ylabel('Y(f)')
legend('Y(f)')
title('Y(f) = ft(𝑥1(𝑡)+𝑥2(𝑡)+𝑥3(𝑡))')

%% a-4))
%%

y_filt = lowpass(y, 8000, 1/Ts);

figure;
plot(t, y_filt)
grid
xlabel('t')
ylabel('filtered y(t)')
legend('filtered y(t)')
title('filtered 𝑦(𝑡)=𝑥1(𝑡)+𝑥2(𝑡)+𝑥3(𝑡)')


Y_filt = fft(y_filt);

figure;
plot(f, abs(Y_filt))
grid
xlabel('f')
ylabel('filtered Y(f)')
legend('filtered Y(f)')
title('filtered Y(f) = ft(𝑥1(𝑡)+𝑥2(𝑡)+𝑥3(𝑡))')
