%%
%Subpunctul a)
omega = -pi : 0.01 : pi;        %grila de frecvente cu pas 0.01
omega0 = pi/8;
N = 100;
j = sqrt (-1);
n = 0 : 0.01 : N-1;
xn = exp(j*n*omega0);        %Semnalul dat.
X = xn * exp(-j*n'*omega);   %Calcului transformatei Fourier

figure; hold on;
plot(omega, abs(X))          %Graficul spectrului
hold off;

max_spectru = max(abs(X))
%%
%Subpunctul b)
figure; hold on;
X2 = freqz (xn, 1, omega);
plot ( omega, abs(X2));     %Trasez graficul spectrului calculat cu ajutorul functiei freqz
hold off;

figure; hold on;
plot(omega, 20*log(X2))     %Trasez graficul spectrului calculat cu ajutorul functie freqz, insa in reprezentare logaritmica
hold off;

%%
%Subpunctul c)
sp = @(omega) abs ((sin ((omega- omega0)'*N/2))/(sin ((omega- omega0)'/2)));  %Implementez formula 2.16
spp = sp(0.3927)    %Calculez formula in functie de omega0

%In mod ideal egalittea se verifica pentru ca exista o diferenta mica pe
%axa Y intre cele 2 puncte(x si n), dar in realitate spectrul lui omega0
%tinde la n, dar nu ajunge niciodata la n => nu este egalitate.
