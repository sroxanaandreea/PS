%% Subpunctul a)
clc; clear; close all;

M = 16;
r = 90;
beta = 9;
L = 1;
alfa = 0.33;
n = 0 : M-1;
omega_c = 0.4;

w1 = boxcar(M) ;        % Fereastra dreptunghiulara
w2 = triang(M) ;        % Fereastra triunghiulara
w3 = blackman(M) ;      % Fereastra Blackman
w4 = chebwin(M,r) ;     % Fereastra Cebisev
w5 = hamming(M) ;       % Fereastra Hamming
w6 = hanning(M) ;       % Fereastra Hanning
w7 = kaiser(M,beta) ;   % Fereastra Kaiser
w8 = tukeywin(M,alfa) ; % Fereastra Tuckey
w9 = (sinc(2*(2*n-M+1)/(2*(M-1)))).^L; %Fereastra Lanczos

h1 = fir1(M-1,omega_c,w1) ;
h2 = fir1(M-1,omega_c,w2) ;
h3 = fir1(M-1,omega_c,w3) ;
h4 = fir1(M-1,omega_c,w4) ;
h5 = fir1(M-1,omega_c,w5) ;
h6 = fir1(M-1,omega_c,w6) ;
h7 = fir1(M-1,omega_c,w7) ;
h8 = fir1(M-1,omega_c,w8) ;
h9 = fir1(M-1,omega_c,w9) ;

[H1,om1] = freqz(h1);
[H2,om2] = freqz(h2);
[H3,om3] = freqz(h3);
[H4,om4] = freqz(h4);
[H5,om5] = freqz(h5);
[H6,om6] = freqz(h6);
[H7,om7] = freqz(h7);
[H8,om8] = freqz(h8);
[H9,om9] = freqz(h9);

subplot(3, 3, 1)
plot(om1, abs(H1));
title('dreptunghiular');
subplot(3, 3, 2)
plot(om2, abs(H2));
title('triunghilar');
subplot(3, 3, 3)
plot(om3, abs(H3));
title('Blackman');
subplot(3, 3, 4)
plot(om4, abs(H4));
title('Cebisev');
subplot(3, 3, 5)
plot(om5, abs(H5));
title('Hamming');
subplot(3, 3, 6)
plot(om6, abs(H6));
title('Hanning');
subplot(3, 3, 7)
plot(om7, abs(H7));
title('Kaiser');
subplot(3, 3, 8)
plot(om8,abs(H8));
title('Tuckey');
subplot(3, 3, 9)
plot(om9,abs(H9));
title('Lanczos');

%Pentru realizarea clasamentului ferestrelor se tine cont de urmatoarele:
%1) Daca atenuarea este mare in banda de trecere (Inceputul benzii este
%cat mai lin) -> prezinta benzi de tranzitie larga
%2) Daca atenuarea este mica in banda de trecere -> prezinta benzi de
%tranzitie ingusta
%Astfel clasamentul este:
%1. Kaiser
%2. Cebisev
%3. Hamming
%4. Blackman
%5. Hanning
%6. Lanczos
%7. Triunghiular
%8. Tuckey
%9. Dreptunchiular

%% Subpunctul b)
clc; clear; close all;

M1_b = 24;
r_b1 = 90;
beta_b1 = 9;
L_b1 = 1;
alfa_b1 = 0.33;
n_b1 = 0 : M1_b-1;
omega_c_b1 = 0.4;

w1_b1 = boxcar(M1_b) ;           % Fereastra dreptunghiulara
w2_b1 = triang(M1_b) ;           % Fereastra triunghiulara
w3_b1 = blackman(M1_b) ;         % Fereastra Blackman
w4_b1 = chebwin(M1_b,r_b1) ;     % Fereastra Cebisev
w5_b1 = hamming(M1_b) ;          % Fereastra Hamming
w6_b1 = hanning(M1_b) ;          % Fereastra Hanning
w7_b1 = kaiser(M1_b,beta_b1) ;   % Fereastra Kaiser
w8_b1 = tukeywin(M1_b,alfa_b1) ; % Fereastra Tuckey
w9_b1 = (sinc(2*(2*n_b1-M1_b+1)/(2*(M1_b-1)))).^L_b1; %Fereastra Lanczos

%Generarea filtrului
h1_b1 = fir1(M1_b-1,omega_c_b1,w1_b1) ;
h2_b1 = fir1(M1_b-1,omega_c_b1,w2_b1) ;
h3_b1 = fir1(M1_b-1,omega_c_b1,w3_b1) ;
h4_b1 = fir1(M1_b-1,omega_c_b1,w4_b1) ;
h5_b1 = fir1(M1_b-1,omega_c_b1,w5_b1) ;
h6_b1 = fir1(M1_b-1,omega_c_b1,w6_b1) ;
h7_b1 = fir1(M1_b-1,omega_c_b1,w7_b1) ;
h8_b1 = fir1(M1_b-1,omega_c_b1,w8_b1) ;
h9_b1 = fir1(M1_b-1,omega_c_b1,w9_b1) ;

[H1_b1,om1_b1] = freqz(h1_b1);
[H2_b1,om2_b1] = freqz(h2_b1);
[H3_b1,om3_b1] = freqz(h3_b1);
[H4_b1,om4_b1] = freqz(h4_b1);
[H5_b1,om5_b1] = freqz(h5_b1);
[H6_b1,om6_b1] = freqz(h6_b1);
[H7_b1,om7_b1] = freqz(h7_b1);
[H8_b1,om8_b1] = freqz(h8_b1);
[H9_b1,om9_b1] = freqz(h9_b1);

%Reprezentarea caracteristicii in frecventa
figure(1); hold on;
subplot(3, 3, 1)
plot(om1_b1, abs(H1_b1));
title('dreptunghiular');
subplot(3, 3, 2)
plot(om2_b1, abs(H2_b1));
title('triunghilar');
subplot(3, 3, 3)
plot(om3_b1, abs(H3_b1));
title('Blackman');
subplot(3, 3, 4)
plot(om4_b1, abs(H4_b1));
title('Cebisev');
subplot(3, 3, 5)
plot(om5_b1, abs(H5_b1));
title('Hamming');
subplot(3, 3, 6)
plot(om6_b1, abs(H6_b1));
title('Hanning');
subplot(3, 3, 7)
plot(om7_b1, abs(H7_b1));
title('Kaiser');
subplot(3, 3, 8)
plot(om8_b1,abs(H8_b1));
title('Tuckey');
subplot(3, 3, 9)
plot(om9_b1,abs(H9_b1));
title('Lanczos');
hold off;

M2_b = 32;
r_b2 = 90;
beta_b2 = 9;
L_b2 = 1;
alfa_b2 = 0.33;
n_b2 = 0 : M2_b-1;
omega_c_b2 = 0.4;

w1_b2 = boxcar(M2_b) ;        % Fereastra dreptunghiulara
w2_b2 = triang(M2_b) ;        % Fereastra triunghiulara
w3_b2 = blackman(M2_b) ;      % Fereastra Blackman
w4_b2 = chebwin(M2_b,r_b2) ;     % Fereastra Cebisev
w5_b2 = hamming(M2_b) ;       % Fereastra Hamming
w6_b2 = hanning(M2_b) ;       % Fereastra Hanning
w7_b2 = kaiser(M2_b,beta_b2) ;   % Fereastra Kaiser
w8_b2 = tukeywin(M2_b,alfa_b2) ; % Fereastra Tuckey
w9_b2 = (sinc(2*(2*n_b2-M2_b+1)/(2*(M2_b-1)))).^L_b2; %Fereastra Lanczos

%Generarea filtrului
h1_b2 = fir1(M2_b-1,omega_c_b2,w1_b2) ;
h2_b2 = fir1(M2_b-1,omega_c_b2,w2_b2) ;
h3_b2 = fir1(M2_b-1,omega_c_b2,w3_b2) ;
h4_b2 = fir1(M2_b-1,omega_c_b2,w4_b2) ;
h5_b2 = fir1(M2_b-1,omega_c_b2,w5_b2) ;
h6_b2 = fir1(M2_b-1,omega_c_b2,w6_b2) ;
h7_b2 = fir1(M2_b-1,omega_c_b2,w7_b2) ;
h8_b2 = fir1(M2_b-1,omega_c_b2,w8_b2) ;
h9_b2 = fir1(M2_b-1,omega_c_b2,w9_b2) ;

[H1_b2,om1_b2] = freqz(h1_b2);
[H2_b2,om2_b2] = freqz(h2_b2);
[H3_b2,om3_b2] = freqz(h3_b2);
[H4_b2,om4_b2] = freqz(h4_b2);
[H5_b2,om5_b2] = freqz(h5_b2);
[H6_b2,om6_b2] = freqz(h6_b2);
[H7_b2,om7_b2] = freqz(h7_b2);
[H8_b2,om8_b2] = freqz(h8_b2);
[H9_b2,om9_b2] = freqz(h9_b2);

%Reprezentarea caracteristicii in frecventa
figure(2); hold on;
subplot(3, 3, 1)
plot(om1_b2, abs(H1_b2));
title('dreptunghiular');
subplot(3, 3, 2)
plot(om2_b2, abs(H2_b2));
title('triunghilar');
subplot(3, 3, 3)
plot(om3_b2, abs(H3_b2));
title('Blackman');
subplot(3, 3, 4)
plot(om4_b2, abs(H4_b2));
title('Cebisev');
subplot(3, 3, 5)
plot(om5_b2, abs(H5_b2));
title('Hamming');
subplot(3, 3, 6)
plot(om6_b2, abs(H6_b2));
title('Hanning');
subplot(3, 3, 7)
plot(om7_b2, abs(H7_b2));
title('Kaiser');
subplot(3, 3, 8)
plot(om8_b2,abs(H8_b2));
title('Tuckey');
subplot(3, 3, 9)
plot(om9_b2,abs(H9_b2));
title('Lanczos');
hold off;