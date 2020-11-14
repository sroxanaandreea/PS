clc; clear; close all;
%Subpunctul a)
N1 = 230;           %Aleg valorea lui N cuprinsa intre 200 si 300
x1 = randn(1, N1);  %Generez semnalul aleator folosind functia
medie1 = mean(x1);  %Calculez media semnalului
L = 115;            %Aleg L astfel incat sa fie aproximativ jumatate din N1
rx1 = xcorr(x1, L, 'biased');   %Corelatia pentru semnalul generat mai sus
figure ; hold on;
stem(-L:L, rx1, 'b') ;
plot(-L:L, rx1, 'b') ;
hold off;

N2 = 580;                   %Aleg valoarea lui N cuprinsa intre 500 si 600
x2 = randn(1, N2); 
medie2 = mean(x2);  
rx2 = xcorr(x2, L, 'biased'); 

figure; hold on;
stem(-L:L, rx2, 'r'); 
plot(-L:L, rx2, 'r'); 
hold off;

N3 = 1120;          %Aleg valoarea lui N in jur de 1000
x3 = randn(1, N2); 
medie3 = mean(x2);  
rx3 = xcorr(x3, L, 'biased'); 

figure; hold on;
stem(-L:L, rx3, 'g'); 
plot(-L:L, rx3, 'g'); 
hold off;

%Concluzie:
%Odata cu cresterea numarului de date N, creste si precizia, iar semnalele
%de zgomot dispar. 

%Subpunctul b)
Ts_b = 1;           %Aleg perioada de esantionare
omega_b = (2*pi)/3; %Aleg un omega ales aleator
N_b = 74;           %Aleg suportul de semnal
L_b = N_b/2;        %Aleg L astfel incat sa fie jumatate din N_b

n_b = 0 : N_b-1;
xn_b = sin(omega_b * Ts_b * n_b);   %Calculez sinusoida discreta
rx_b = xcorr(xn_b, L_b, 'biased');
figure; hold on;
stem(0:N_b, rx_b, 'g');  %Reprezint grafic
plot(n_b, xn_b, 'r');
hold off;
T_b = 2*pi/omega_b;

%Subpunctul c)

S = audioread('xilo.wav');
xilo = S(8000 : 10000);  %Extrag esantioanele de la 8 000 la 10 000
L_c = 100;               %Aleg un L aleator
rx_c  = xcorr(xilo, L_c, 'biased');
figure; hold on;
plot (-L_c:L_c, rx_c, 'r');
stem (-L_c:L_c, rx_c, 'r');
hold off;

%Sumbpunctul d)
load sunet_s.mat;
load sunet_i.mat;
load sunet_a.mat;
L_d = 100;

rx1_d = xcorr(ya, L_d, 'biased');   %Corelatia pentru semnalul ya
figure; hold on;
plot (-L_d:L_d, rx1_d, 'r');
stem (-L_d:L_d, rx1_d, 'r');
hold off;

rx2_d  = xcorr(yi, L_d, 'biased');  %Corelatia pentru semnalul yi
figure; hold on;
plot (-L_d:L_d, rx2_d, 'b');
stem (-L_d:L_d, rx2_d, 'b');
hold off;

rx3_d  = xcorr(ys, L_d, 'biased');  %Corelatia pentru semnalul ys
figure; hold on;
plot (-L_d:L_d, rx3_d, 'g');
stem (-L_d:L_d, rx3_d, 'g');
hold off;

medie_ys = mean(ys);
medie_yi = mean(yi);
medie_ya = mean(ya);
%Semnalul ys are caracteristici asemanatoare zgomotului alb, deaorece media
%este egala cu aproximativ 0.

