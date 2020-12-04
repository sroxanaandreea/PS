%%
%Subpunctul a)
clc; clear;

teta = pi/6;
omega = -pi : 0.01 : pi;

%Alegem mai multe valori aleatoare pentru r in intervalul (0,1)
r1 = 0;
r2 = 0.46;
r3 = 0.72;
r4 = 0.93;
r5 = 1;

a1 = [1 -2*r1*cos(teta) r1*r1];
H1 = freqz(1, a1, omega);

a2 = [1 -2*r2*cos(teta) r2*r2];
H2 = freqz(1, a2, omega);

a3 = [1 -2*r3*cos(teta) r3*r3];
H3 = freqz(1, a3, omega);

a4 = [1 -2*r4*cos(teta) r4*r4];
H4 = freqz(1, a4, omega);

a5 = [1 -2*r5*cos(teta) r5*r5];
H5 = freqz(1, a5, omega);

%Normalizam axa Ox prin impartirea pulsatiei omega la pi.
figure(1);
subplot(2, 1, 1);
plot(omega/pi, abs(H1));
hold on;
plot(omega/pi, abs(H2));
hold on;
plot(omega/pi, abs(H3));
hold on;
plot(omega/pi, abs(H4));
hold on;
plot(omega/pi, abs(H5));
xlabel('Frecventa normalizata');
ylabel('Amplitudine');
legend( 'H1', 'H2', 'H3', 'H4', 'H5')
hold off;

subplot(2, 1, 2);
plot(omega/pi, 20*log(abs(H1)));
hold on;
plot(omega/pi, 20*log(abs(H2)));
hold on;
plot(omega/pi, 20*log(abs(H3)));
hold on;
plot(omega/pi, 20*log(abs(H4)));
hold on;
plot(omega/pi, 20*log(abs(H5)));
xlabel('Frecventa normalizata');
ylabel('Amplitudine reprezentata in decibeli');
hold off;


figure(2);
subplot(1, 5, 1)
zplane(a1,1);
hold on;
subplot(1, 5, 2)
zplane(a2,1);
hold on;
subplot(1, 5, 3)
zplane(a3,1);
hold on;
subplot(1, 5, 4)
zplane(a4,1);
hold on;
subplot(1, 5, 5)
zplane(a5,1);
hold on;


%%
%Subpunctul b)
clc; clear;

teta = pi/6;
omega = -pi : 0.01 : pi;

%Alegem mai multe valori aleatoare pentru r in intervalul (0,1)
r1 = 0;
r2 = 0.46;
r3 = 0.72;
r4 = 0.93;
r5 = 1;

a1 = [1 -2*r1*cos(teta) r1*r1];
H1 = freqz(1, a1, omega);
G0_1 = 1/(1 - 2*r1*cos(teta) + r1*r1);
Gn_1 = H1/G0_1;

a2 = [1 -2*r2*cos(teta) r2*r2];
H2 = freqz(1, a2, omega);
G0_2 = 1/(1 - 2*r2*cos(teta) + r2*r2);
Gn_2 = H2/G0_2;

a3 = [1 -2*r3*cos(teta) r3*r3];
H3 = freqz(1, a3, omega);
G0_3 = 1/(1 - 2*r3*cos(teta) + r3*r3);
Gn_3 = H3/G0_3;

a4 = [1 -2*r4*cos(teta) r4*r4];
H4 = freqz(1, a4, omega);
G0_4 = 1/(1 - 2*r4*cos(teta) + r4*r4);
Gn_4 = H4/G0_4;

a5 = [1 -2*r5*cos(teta) r5*r5];
H5 = freqz(1, a5, omega);
G0_5 = 1/(1 - 2*r5*cos(teta) + r5*r5);
Gn_5 = H5/G0_5;

figure(1);
subplot(2, 1, 1);
plot(omega/pi, abs(Gn_1));
hold on;
plot(omega/pi, abs(Gn_2));
hold on;
plot(omega/pi, abs(Gn_3));
hold on;
plot(omega/pi, abs(Gn_4));
hold on;
plot(omega/pi, abs(Gn_5));
xlabel('Frecventa normalizata');
ylabel('Amplitudine');
legend( 'Gn_1', 'Gn_2', 'Gn_3', 'Gn_4', 'Gn_5')
hold off;

subplot(2, 1, 2);
plot(omega/pi, 20*log(abs(Gn_1)));
hold on;
plot(omega/pi, 20*log(abs(Gn_2)));
hold on;
plot(omega/pi, 20*log(abs(Gn_3)));
hold on;
plot(omega/pi, 20*log(abs(Gn_4)));
hold on;
plot(omega/pi, 20*log(abs(Gn_5)));
xlabel('Frecventa normalizata');
ylabel('Amplitudine reprezentata in decibeli');
hold off;


figure(2);
subplot(1, 5, 1)
zplane(a1,1);
hold on;
subplot(1, 5, 2)
zplane(a2,1);
hold on;
subplot(1, 5, 3)
zplane(a3,1);
hold on;
subplot(1, 5, 4)
zplane(a4,1);
hold on;
subplot(1, 5, 5)
zplane(a5,1);
hold on;