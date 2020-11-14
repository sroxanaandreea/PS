clc;
clear;
close all;

omega = -pi : 0.01 : pi;
N1 = 390;

x1 = randn (1, N1);             %Generez semnalul de tip zgomot alb
xcor1 = xcorr(x1, 'biased');    %Calculez autocorelatia semnalului
X1 = freqz(xcor1, 1, omega);    %Calculez TF pentru autocorelatie
dens1 = (abs(X1).^2)/N1 ;       %densitatea spectrala de putere

figure(1);
subplot(2, 1, 1);
plot (omega, abs(dens1));
title('Graficul densitatii spectrale de putere pentru N1');
subplot(2, 1, 2);
plot (omega, 20*log(dens1));
title('Graficul densitatii spectrale de putere pentru N1 la scara log');
hold off;

N2 = 510;
x2 = randn (1, N2);             %Generez semnalul de tip zgomot alb
xcor2 = xcorr(x2, 'biased');    %Calculez autocorelatia semnalului
X2 = freqz(xcor2, 1, omega);    %Calculez TF pentru autocorelatie
dens2 = (abs(X2).^2)/N2 ;       %densitatea spectrala de putere

figure(2);
subplot(2, 1, 1);
plot (omega, abs(dens2));
title('Graficul densitatii spectrale de putere pentru N2');
subplot(2, 1, 2);
plot (omega, 20*log(dens2));
title('Graficul densitatii spectrale de putere pentru N2 la scara log');
hold off;

N3 = 620;
x3 = randn (1, N3);             %Generez semnalul de tip zgomot alb
xcor3 = xcorr(x3, 'biased');    %Calculez autocorelatia semnalului
X3 = freqz(xcor3, 1, omega);    %Calculez TF pentru autocorelatie
dens3 = (abs(X3).^2)/N3 ;       %densitatea spectrala de putere

figure(3);
subplot(2, 1, 1);
plot (omega, abs(dens3));
title('Graficul densitatii spectrale de putere pentru N3');
subplot(2, 1, 2);
plot (omega, 20*log(dens3));
title('Graficul densitatii spectrale de putere pentru N3 la scara log');
hold off;
