N = 2;
w = 15;
phi = 3.14;
alfa = 20;

n=0 : 0.01 : N-1;
imp_unit = eye(1,N);  % impuls unitar
tr_unit = ones(1,N);  % treapta unitate
e = alfa.^n ; % semnal exponential
sin_real = sin(w * n + phi); % sinusoida reala
j = sqrt(-1);
sin_compl = exp(j * (w * n + phi));  %sinusoida complexa

figure ; hold on;
plot(n, sin_real, 'b'); 
plot(n, sin_compl, 'r');
stem(n, sin_real, 'b') ;
stem(n, sin_compl, 'r') ;
hold off;

x1 = e;
x2 = sin_real;
xs = x1 + x2;
xm = x1 .* x2;
xc = conv(x1,x2); %convolutie intre semnalele x1 si x2

x = rand(1,N) ; %generam o matrice random de 1xN
xn = randn(1,N) ;
mean(x)';  %calculam media
r = xcorr(x,'unbiased') ; %autocorelatia nedeviata
rx = xcorr(x,'biased') ; %autocorelatia deviata
re = xcov(x,'unbiased') ; %autocovariatia nedeviata
rxe = xcov(x,'biased') ; %autocovariatia deviata

%Semnale audio
%FS=50;
x = audioread('xilo.wav');