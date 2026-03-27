clc;

t = 0.01:0.01:10;
x = 10*sin(2*pi*0.5*t) + 1*sin(2*pi*20*t);

x_fft = abs(fft(x));

subplot (2,1,1);
plot(t,x);
subplot (2,1,2);
plot(x_fft);

