%%
%Subpunctul a)

omega = -pi : 0.01 : pi;        %grila de frecvente cu pas 0.01
omega1 = pi/8;
omega2 = pi/3;
N = 112;
n = 0 : 0.01 : N-1;

xn_a = cos(omega1*n)+cos(omega2*n);
T1_a = 2*pi/omega1;              %Perioada primei sinusoide
T2_a = 2*pi/omega2;              %Perioada celei de-a doua sinusoide
T_a = lcm(T1_a, T2_a);           %Functia calculeaza cel mai mic multiplu comun intre cele 2 T-uri, obtinandu-se perioada sumelor de sinusoide;

figure; hold on;
plot(n, xn_a)
title("Graficul semnalului xn")
hold off;

%%
%Subpunctul b)

X_b = xn_a * exp(-j*n'*omega);   %Calcului transformatei Fourier

figure; hold on;
plot(omega, abs(X_b))          %Graficul spectrului
title("Graficul spectrului")
hold off;

figure ; hold on;
plot(omega, 20*log(abs(X_b)))  %Graficul spectrului in reprezentare logaritmica
title("Graficul spectrului la scara logaritmica")
hold off;

%Concluzii:
%Da, graficul obtinut este unul asteptat (mai ales in urma calculului punctelor anterioare) cu mai multe varfuri.

%%
%Subpunctul c)

omega1_c = pi/6;
omega2_c = pi/11;
xn_c = sin(omega1_c * n) + sin(omega2_c * n);

T1_c = 2*pi/omega1_c; %perioada primei sinusoide
T2_c = 2*pi/omega2_c; %perioada celei de a doua
T_c = lcm(T1_c, T2_c); %perioada semnalului reprezentat ca suma de sinusoide

X_c = xn_c * exp(-j*n'*omega);   %Calcului transformatei Fourier

figure; hold on;
plot(omega, abs(X_c))          %Graficul spectrului
title("Graficul spectrului")
hold off;

figure ; hold on;
plot(omega, 20*log(abs(X_c)))  %Graficul spectrului in reprezentare logaritmica
title("Graficul spectrului la scara logaritmica")
hold off;

%%
%Subpunctul d)

%Aleg omega1 si omega2 astfel incat omega1 - omega2 = 0.01
omega1_d = 2*pi/3;
omega2_d = omega1_d - 0.01;

xn_d = sin(omega1_d * n) + sin(omega2_d * n);

T1_d = 2*pi/omega1_d;           %perioada primei sinusoide
T2_d = 2*pi/omega2_d;           %perioada celei de a doua
T2_d_round = round(T2_d);       %Folosesc functia round pentru a rotunji elementul.
T_d = lcm(T1_d, T2_d_round);    %perioada semnalului reprezentat ca suma de sinusoide

X_d = xn_d * exp(-j*n'*omega);   %Calcului transformatei Fourier

figure; hold on;
plot(n, xn_d)                    %Graficul semnalului
title("Graficul semnalului xn_d")
hold off;

figure; hold on;
plot(omega, abs(X_d))            %Graficul spectrului
title("Graficul spectrului")
hold off;

figure ; hold on;
plot(omega, 20*log(abs(X_d)))  %Graficul spectrului in reprezentare logaritmica
title("Graficul spectrului la scara logaritmica")
hold off;

%Se observa din graficul semnalului xn_d cum scade amplitudinea