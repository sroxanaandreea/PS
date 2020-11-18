%%
%Subpunctul a)
clear; clc;
omega = -pi: 0.01 : pi;
a = [1.12 -1.82 0.73]     %poli
b = [3.51 -5.71 2.31]     %Zerouri    

%Verific daca valorile sunt relativ aproape de cercul unitate
r1 = roots(a);
r2 = roots(b);

figure; hold on;
zplane(b,a);
title('Poli - xerouri');
legend('zerouri' ,'poli');
hold off;

%Calculez raspunsul in frecveneta
H = freqz(b, a ,omega);

figure; hold on;
plot(omega, abs(H));
hold off;

%%
%Subpunctul b)
clear; clc; close all;
omega_b = -pi: 0.01 : pi;
a_b = [4.12 -1.82 0.19]          %poli
b_b = [5.91 -2.71 0.31]          %zerouri

%Verific daca valorile sunt relativ aproape de cercul unitate
r1_b = roots(a_b);
r2_b = roots(b_b);

figure; hold on;
zplane(b_b,a_b);
title('Poli - xerouri');
legend('zerouri' ,'poli');
hold off;

%Calculez raspunsul in frecveneta
H_b = freqz(b_b, a_b ,omega_b);

figure; hold on;
plot(omega_b, abs(H_b));
hold off;
