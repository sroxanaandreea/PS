%%

N = 480;
n = 0 : N-1;
e = randn(1, N);        %Generez semnalul zgomot alb;
omega = -pi : 0.01 : pi;
omega0 = pi/5;
x = cos(omega0 * n) + e;

%%
%Subpunctul a)

figure; hold on;
stem(n, x);
title("Reprezentarea in discret a semnalului x");
hold off;

%Observam ca este greu de estimat vizual o periodicitate a semnalului

%%
%Subpunctul b)

X1 = freqz(x, 1, omega);    %Calculez TF a semnalului
dens = (abs(X1).^2)/N ;     %densitatea spectrala de putere

figure; hold on;
plot(omega, dens)          %Graficul densitatii spectrale de putere
title("Graficul densitatii spectrale de putere")
hold off;

figure ; hold on;
plot(omega, 20*log(dens))  %Graficul densitatii in reprezentare logaritmica
title("Graficul densitatii la scara logaritmica")
hold off;

%%
%Subpunctul c)
a1 = 0.1;
a2 = 0.5;
a3 = 1;
a4 = 3;
a5 = 5;

x1_c = cos(omega0 * n) + a1*e;
x2_c = cos(omega0 * n) + a2*e;
x3_c = cos(omega0 * n) + a3*e;
x4_c = cos(omega0 * n) + a4*e;
x5_c = cos(omega0 * n) + a5*e;

X1_c = freqz(x1_c, 1, omega);    %Calculez TF 
dens1 = (abs(X1_c).^2)/N ;       %densitatea spectrala de putere

X2_c = freqz(x2_c, 1, omega);    %Calculez TF 
dens2 = (abs(X2_c).^2)/N ;       %densitatea spectrala de putere

X3_c = freqz(x3_c, 1, omega);    %Calculez TF 
dens3 = (abs(X3_c).^2)/N ;       %densitatea spectrala de putere

X4_c = freqz(x4_c, 1, omega);    %Calculez TF 
dens4 = (abs(X4_c).^2)/N ;       %densitatea spectrala de putere

X5_c = freqz(x5_c, 1, omega);    %Calculez TF 
dens5 = (abs(X5_c).^2)/N ;       %densitatea spectrala de putere


figure; hold on;
plot(omega, abs(dens1))          %Graficul densitatii spectrale de putere 1
title("Graficul densitatii spectrale de putere 1")
hold off;

figure; hold on;
plot(omega, abs(dens2))         %Graficul densitatii spectrale de putere 2
title("Graficul densitatii spectrale de putere 2")
hold off;

figure; hold on;
plot(omega, abs(dens3))          %Graficul densitatii spectrale de putere 3
title("Graficul densitatii spectrale de putere 3")
hold off;

figure; hold on;
plot(omega, abs(dens4))          %Graficul densitatii spectrale de putere 4
title("Graficul densitatii spectrale de putere 4")
hold off;

figure; hold on;
plot(omega, abs(dens5))          %Graficul densitatii spectrale de putere 4
title("Graficul densitatii spectrale de putere 5")
hold off;


%Pentru amplitudini mici , semnalul este mai puternic si se distinge mai
%usor.Amplitudinea in jurul careia pulsatia se mai poate identifica cu
%precizie este in jur de 5.

%%
%Subpunctul d)

for i = 1 : 5
    a = [0.1 0.5 1 3 5];
    xn_d = cos(omega0*n)+a(i)*e;
    rx = xcorr(xn_d, 'biased'); %secventa de autocorelatie pentru semnalul x_n
    rv = xcorr(a(i)*e, 'biased');    %secventa de autocorelatie pentru zgomot
    SNR(i) = 20*log(rx/rv);       %raport semnal zgomot
    
    figure(1)
    plot(SNR)
    hold on;
end
hold off;
