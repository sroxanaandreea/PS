clc;
clear;
close all;

%%
%Subpunctul a)

omega = -pi : 0.01 : pi;
load ('sunspot.dat');

X_300 = freqz(sunspot(:,2), 1, omega);
omega_300 = 0.57;           %Valoare aflata din grafic. Am luat urmatoare valoare maxima dupa 0.
T_300 = 2*pi/omega_300;     %Calculul perioadei in functie de pulsatia gasita;

figure;
subplot(3, 1, 1);
plot (omega, abs(X_300));
title ('Numarul de pete solare anual');

X_100 = freqz(sunspot(1:100, 2), 1, omega);
max_spectru_100 = max(abs(X_100));
omega_100 = 0.6;            %Valoare aflata din grafic. Am luat urmatoare valoare maxima dupa 0.
T_100 = 2*pi/omega_100;     %Calculul perioadei in functie de pulsatia gasita;

subplot(3, 1, 2);
plot (omega, abs(X_100));
title ('Numarul de pete solare in primii 100 de ani');

X_50  = freqz(sunspot(1:50, 2), 1, omega);
max_spectru_50 = max(abs(X_50));
omega_50 = 0.57;            %Valoare aflata din grafic. Am luat urmatoare valoare maxima dupa 0.
T_50 = 2*pi/omega_50;       %Calculul perioadei in functie de pulsatia gasita;

subplot(3, 1, 3);
plot (omega, abs(X_50));
title ('Numarul de pete solare in primii 50');

%Concluzii:
%Putem observa ca odata cu miscosarea numarului de ani, scade si precizia,
%varfurile fiind mai curbate.

%%
%Subpunctul b)
run lynx.m

X_b = freqz(lynx_t, 1, omega);

figure; hold on;
plot(omega, abs(X_b));
hold off;

omega_b = 0.65;         %Valoare aflata din grafic. Am luat urmatoare valoare maxima dupa 0.
T_b = 2*pi/ omega_b;    %Calculul perioadei in functie de pulsatia gasita.

%%
%Subpunctul c)

S = audioread('xilo.wav');
x_xilo = S(8000 : 10000);       %Extrag esantioanele de la 8 000 la 10 000
X_xilo = freqz (x_xilo, 1, omega);

figure; hold on;
plot (omega, abs(X_xilo));
hold off;

omega_c = 0.78;         %Valoare aflata din grafic. Am luat urmatoare valoare maxima dupa 0.
T_c = 2*pi/ omega_c;    %Calculul perioadei in functie de pulsatia gasita.
