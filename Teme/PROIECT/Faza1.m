%% subpunctul a)
clc; clear; close all;
M = 16;
r = 90;
beta = 9;
L = 1;
alfa = 0.33;
n = 0 : M-1;

w1 = boxcar(M) ;        % Fereastra dreptunghiulara
w2 = triang(M) ;        % Fereastra triunghiulara
w3 = blackman(M) ;      % Fereastra Blackman
w4 = chebwin(M,r) ;     % Fereastra Cebisev
w5 = hamming(M) ;       % Fereastra Hamming
w6 = hanning(M) ;       % Fereastra Hanning
w7 = kaiser(M,beta) ;   % Fereastra Kaiser
w8 = tukeywin(M,alfa) ; % Fereastra Tuckey
w9 = (sinc(2*(2*n-M+1)/(2*(M-1)))).^L; %Fereastra Lanczos

subplot(3, 3, 1)
stem(w1);
title('dreptunghiular');
subplot(3, 3, 2)
stem(w2);
title('triunghilar');
subplot(3, 3, 3)
stem(w3);
title('Blackman');
subplot(3, 3, 4)
stem(w4);
title('Cebisev');
subplot(3, 3, 5)
stem(w5);
title('Hamming');
subplot(3, 3, 6)
stem(w6);
title('Hanning');
subplot(3, 3, 7)
stem(w7);
title('Kaiser');
subplot(3, 3, 8)
stem(w8);
title('Tuckey');
subplot(3, 3, 9)
stem(w9);
title('Lanczos');

%% Subpunctul b)

wb1 = w1/sum(w1);       %Normare
[W1,om1] = freqz(wb1);  %Calcul raspuns in frecventa

wb2 = w2/sum(w2);
[W2,om2] = freqz(wb2);

wb3 = w3/sum(w3);
[W3,om3] = freqz(wb3);

wb4 = w4/sum(w4);
[W4,om4] = freqz(wb4);

wb5 = w5/sum(w5);
[W5,om5] = freqz(wb5);

wb6 = w6/sum(w6);
[W6,om6] = freqz(wb6);

wb7 = w7/sum(w7);
[W7,om7] = freqz(wb7);

wb8 = w8/sum(w8);
[W8,om8] = freqz(wb8);

wb9 = w9/sum(w9);
[W9,om9] = freqz(wb9);

%Reprezentare adimensionala
figure(1); hold on;
subplot(3, 3, 1)
plot(om1,W1);
title('dreptunghiular');
subplot(3, 3, 2)
plot(om2,W2);
title('triunghilar');
subplot(3, 3, 3)
plot(om3,W3);
title('Blackman');
subplot(3, 3, 4)
plot(om4,W4);
title('Cebisev');
subplot(3, 3, 5)
plot(om5,W5);
title('Hamming');
subplot(3, 3, 6)
plot(om6,W6);
title('Hanning');
subplot(3, 3, 7)
plot(om7,W7);
title('Kaiser');
subplot(3, 3, 8)
plot(om8,W8);
title('Tuckey');
subplot(3, 3, 9)
plot(om9,W9);
title('Lanczos');
hold off;

%Reprezentare in decibeli
figure(2); hold on;
subplot(3, 3, 1)
plot(om1,20*log(W1));
title('dreptunghiular');
subplot(3, 3, 2)
plot(om2,20*log(W2));
title('triunghilar');
subplot(3, 3, 3)
plot(om3,20*log(W3));
title('Blackman');
subplot(3, 3, 4)
plot(om4,20*log(W4));
title('Cebisev');
subplot(3, 3, 5)
plot(om5,20*log(W5));
title('Hamming');
subplot(3, 3, 6)
plot(om6,20*log(W6));
title('Hanning');
subplot(3, 3, 7)
plot(om7,20*log(W7));
title('Kaiser');
subplot(3, 3, 8)
plot(om8,20*log(W8));
title('Tuckey');
subplot(3, 3, 9)
plot(om9,20*log(W9));
title('Lanczos');
hold off;

%% Subpunctul c)
%Pentru ca semnalul sa se apropie cat mai mult de un impuls Dirac, trebuie
%sa avem in vedere ca lobul principal sa fie cat mai ingust si cat mai
%inalt(3), atenuarea sa fie buna in banda de taiere(1) si atenuarea la capatul de
%banda(2).
%Tinand cont de aceste caracteristici, o clasificare ar fi:
%1. Kaiser
%2. Cebisev
%3. Blackman
%4. Hanning
%5. Lanczos
%6. Tuckey
%7. Hamming
%8. Triunghiular
%9. Dreptunghiular
