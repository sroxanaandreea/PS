%Punctul a)
%Alegem Ts, k, M, si omega corespunzator:
Ts_a = 1;        %Perioada de esantionare
M_a = 30;        %Lungimea suport semnal discretizat
omega_a = pi/15; %Pulsatia

Tema2c(omega_a, Ts_a, M_a); %Am apelat functia de la punctul c) al Temei 2 
                            %pentru a reprezenta graficul dintre semnalul 
                            %sinusoidal si cel continuu

T_a = 2*pi/omega_a %Calculul perioadei cu ajutorul formulei 

%Punctul b)
%Se aleg aceleasi valori pentru Ts, M si omega, insa in acest caz, schimbam k ;
Ts_b = 1;            %Perioada de esantionare
M_b = 30 ;           %Lungimea suport semnal discretizat
omega_b = (3*pi)/15; %Pulsatia

Tema2c(omega_b, Ts_b, M_b);

T_b = 2*pi/omega_b %Perioada

%Punctul c)
Ts_c = 1; %Perioada de esantionare
M_c = 50; %Lungimea suport semnal discret
omega_c = 1;

t = 0 : 0.01 : M_c-1; %Definirea intervalului pentru semnalul continual
n_c= 0: M_c-1;


xa_c = sin(omega_c * t);  %calculam sinusoida continua
xn_c = sin (omega_c * n_c * Ts_c); %calculam sinusoida discreta

figure ; hold on;
plot (t, xa_c);    %graficul pentru sinusoida continua aperiodica
stem (n_c, xn_c);  %graficul pentru sinusoida discreta aperiodica 
hold off;

%Punctul d)
Ts_d = 1; 
M_d = 50;
omega1_d = pi/3;
omega2_d = (2*pi) + pi/3

n_d = 0 : 0.5 : M_d-1;
t_d = 0 : 0.5 : M_d-1;
xa1_d = sin(omega1_d * t_d);        %sinusoida continua pentru omega1
xa2_d = sin(omega2_d * t_d);        %sinusoida continua pentru omega2
xn1_d = sin(omega1_d * n_d * Ts_d); %sinusoida discreta pentru omega1
xn2_d = sin(omega2_d * n_d * Ts_d); %sinusoida discreta pentru omega2

figure; hold on;
plot(t_d, xa1_d, 'b');
stem(n_d, xn1_d, 'g');
hold off;
figure; hold on;
plot(t_d, xa2_d, 'r');
stem(n_d, xn2_d, 'g');
hold off;

% Deoarece frecventa semnalului 2 este mai mare, acesta variaza mult mai
% mult fata de primul semnal.


