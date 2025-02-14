%%
clc; clear;

teta = pi/7;
omega = -pi : 0.01 : pi;
j = sqrt(-1);

%Alegem mai multe valori aleatoare pentru r in intervalul (0,1)
r1 = 0;
r2 = 0.3;
r3 = 0.7;
r4 = 0.9;
r5 = 1;

b1 = [1 -2*r1*cos(teta) r1*r1];
H1 = freqz(b1, 1, omega);

b2 = [1 -2*r2*cos(teta) r2*r2];
H2 = freqz(b2, 1, omega);

b3 = [1 -2*r3*cos(teta) r3*r3];
H3 = freqz(b3, 1, omega);

b4 = [1 -2*r4*cos(teta) r4*r4];
H4 = freqz(b4, 1, omega);

b5 = [1 -2*r5*cos(teta) r5*r5];
H5 = freqz(b5, 1, omega);

figure(1);
subplot(2, 1, 1);
plot(omega, abs(H1));
hold on;
plot(omega, abs(H2));
hold on;
plot(omega, abs(H3));
hold on;
plot(omega, abs(H4));
hold on;
plot(omega, abs(H5));
xlabel('Frecventa normalizata');
ylabel('Amplitudine');
legend( 'H1', 'H2', 'H3', 'H4', 'H5')
hold off;

subplot(2, 1, 2);
plot(omega, 20*log(abs(H1)));
hold on;
plot(omega, 20*log(abs(H2)));
hold on;
plot(omega, 20*log(abs(H3)));
hold on;
plot(omega, 20*log(abs(H4)));
hold on;
plot(omega, 20*log(abs(H5)));
xlabel('Frecventa normalizata');
ylabel('Amplitudine reprezentata in decibeli');
hold off;

figure(2);
subplot(1, 5, 1)
zplane(b1,1);
hold on;
subplot(1, 5, 2)
zplane(b2,1);
hold on;
subplot(1, 5, 3)
zplane(b3,1);
hold on;
subplot(1, 5, 4)
zplane(b4,1);
hold on;
subplot(1, 5, 5)
zplane(b5,1);
hold on;

%%
% O alta valoare a lui teta:
teta2 = 2*pi/3;

b1 = [1 -2*r1*cos(teta2) r1*r1];
H1 = freqz(b1, 1, omega);

b2 = [1 -2*r2*cos(teta2) r2*r2];
H2 = freqz(b2, 1, omega);

b3 = [1 -2*r3*cos(teta2) r3*r3];
H3 = freqz(b3, 1, omega);

b4 = [1 -2*r4*cos(teta2) r4*r4];
H4 = freqz(b4, 1, omega);

b5 = [1 -2*r5*cos(teta2) r5*r5];
H5 = freqz(b5, 1, omega);

figure(1);
subplot(2, 1, 1);
plot(omega, abs(H1));
hold on;
plot(omega, abs(H2));
hold on;
plot(omega, abs(H3));
hold on;
plot(omega, abs(H4));
hold on;
plot(omega, abs(H5));
xlabel('Frecventa normalizata');
ylabel('Amplitudine');
legend( 'H1', 'H2', 'H3', 'H4', 'H5')
hold off;

subplot(2, 1, 2);
plot(omega, 20*log(abs(H1)));
hold on;
plot(omega, 20*log(abs(H2)));
hold on;
plot(omega, 20*log(abs(H3)));
hold on;
plot(omega, 20*log(abs(H4)));
hold on;
plot(omega, 20*log(abs(H5)));
xlabel('Frecventa normalizata');
ylabel('Amplitudine reprezentata in decibeli');
hold off;

figure(2);
subplot(1, 5, 1)
zplane(b1,1);
hold on;
subplot(1, 5, 2)
zplane(b2,1);
hold on;
subplot(1, 5, 3)
zplane(b3,1);
hold on;
subplot(1, 5, 4)
zplane(b4,1);
hold on;
subplot(1, 5, 5)
zplane(b5,1);
hold on;