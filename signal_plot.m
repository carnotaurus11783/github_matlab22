clc;

% t = 0.01:0.01:10;
% x = 10*sin(2*pi*0.5*t) + 1*sin(2*pi*20*t);

BMS_data=readtable('p3_1.csv','VariableNamingRule','preserve');
 
 
t =table2array(BMS_data(:,1));
x =table2array(BMS_data(:,2));

x_fft = abs(fft(x));

subplot (2,1,1);
plot(t,x,"r");
subplot (2,1,2);
plot(x_fft);

% Leer archivo
data = readtable('p3.csv');

% Ver nombres de columnas (IMPORTANTE)
disp(data.Properties.VariableNames)

% Extraer eje X (time)
t = data.time;

% Supongamos que tienes 3 variables más (ajusta nombres)
y1 = data.Var1;
y2 = data.Var2;
y3 = data.Var3;

% -------- GRÁFICA 1 --------
figure
plot(t, y1, 'LineWidth', 2)
xlabel('Tiempo')
ylabel('Variable 1')
title('Gráfica 1')
grid on

% -------- GRÁFICA 2 --------
figure
plot(t, y2, 'LineWidth', 2)
xlabel('Tiempo')
ylabel('Variable 2')
title('Gráfica 2')
grid on

% -------- GRÁFICA 3 --------
figure
plot(t, y3, 'LineWidth', 2)
xlabel('Tiempo')
ylabel('Variable 3')
title('Gráfica 3')
grid on