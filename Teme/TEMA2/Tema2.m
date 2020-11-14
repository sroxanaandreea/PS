%%
%Subpuncul a)

omega = -pi : 0.01 : pi;        %grila de frecvente cu pas 0.01
omega0 = pi/8;                  %omega0 liber ales
fi = 3*pi/4;                    %Aleg fi in intervalul [0,2*pi]
N = 75;
j = sqrt (-1);
n = 0 : 0.01 : N-1;

xn_a = cos(omega0 * n + fi);     %Semnalul dat
X_a = xn_a * exp(-j*n'*omega);   %Calcului transformatei Fourier

figure; hold on;
plot(omega, abs(X_a))          %Graficul spectrului
title("Graficul spectrului")
hold off;

figure ; hold on;
plot(omega, 20*log(abs(X_a)))  %Graficul spectrului in reprezentare logaritmica
title("Graficul spectrului reprezentat la scara logaritmica")
hold off;

%Se observa simetria graficului fata de axa y
%%
%Subpunctul b)

alfa = omega0 * n + fi;
xn_b = (exp(j*alfa)+exp(-j*alfa))/2;
X_b = xn_b * exp(-j * n' * omega);  %Calculul transformatei Fourier

figure ; hold on;
plot(omega, abs(X_b))       %Graficul spectrului
title("Graficul spectrului")
hold off;

%Concluzii:

%Folosind formula lui Euler putem observa aceeasi simetrie a graficului fata
%de axa verticala ca si in cazul graficului de la subpunctul a)

%%
%Subpunctul c)
%Aleg 5 valori ale lui fi in intervalul [0,2pi] si calculez semnalul xn si
%tranfsormata Fourier pentru fiecare dintre aceste valori.
fi1_c = pi/7;
fi2_c = 2*pi/3;
fi3_c = 7*pi/6;
fi4_c = 5*pi/3;
fi5_c = 11*pi/5;

%Semnalul pentru cele 5 fi-uri
xn1_c = cos(omega0 * n + fi1_c);
xn2_c = cos(omega0 * n + fi2_c);
xn3_c = cos(omega0 * n + fi3_c);
xn4_c = cos(omega0 * n + fi4_c);
xn5_c = cos(omega0 * n + fi5_c);

%Calculul transformatei Fourier pentru cele 5 fi-uri
X1_c = xn1_c * exp(-j*n'*omega);
X2_c = xn2_c * exp(-j*n'*omega);
X3_c = xn3_c * exp(-j*n'*omega);
X4_c = xn4_c * exp(-j*n'*omega);
X5_c = xn5_c * exp(-j*n'*omega);


figure ; hold on;
plot(omega, abs(X1_c))       %Graficul spectrului pentru fi1
title("Graficul spectrului pentru fi1")
hold off;
figure ; hold on;
plot(omega, abs(X2_c))       %Graficul spectrului pentru fi2
title("Graficul spectrului pentru fi2")
hold off;
figure ; hold on;
plot(omega, abs(X3_c))       %Graficul spectrului pentru fi3
title("Graficul spectrului pentru fi3")
hold off;
figure ; hold on;
plot(omega, abs(X4_c))       %Graficul spectrului pentru fi4
title("Graficul spectrului pentru fi4")
hold off;
figure ; hold on;
plot(omega, abs(X5_c))       %Graficul spectrului pentru fi5
title("Graficul spectrului pentru fi5")
hold off;

%Concluzii:
%In urma analizei graficelor si a faptului ca faza nu apare in formula 2.16
%rezulta ca acestea nu se vor schimba cu nimic, deoarece faza nu
%influenteaza cu nimic.