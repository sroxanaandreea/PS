%%
%Subpunctul a
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

c1 = r1 * exp(j * teta);
b1 = [1 -c1];
H1 = freqz(b1, 1, omega);
figure;
plot(omega, abs(H1));
hold on;

c2 = r2 * exp(j * teta);
b2 = [1 -c2];
H2 = freqz(b2, 1, omega);
plot(omega, abs(H2));
hold on;

c3 = r3 * exp(j * teta);
b3 = [1 -c3];
H3 = freqz(b3, 1, omega);
plot(omega, abs(H3));
hold on;

c4 = r4 * exp(j * teta);
b4 = [1 -c4];
H4 = freqz(b4, 1, omega);
plot(omega, abs(H4));
hold on;

c5 = r5 * exp(j * teta);
b5 = [1 -c5];
H5 = freqz(b5, 1, omega);
plot(omega, abs(H5));
legend( 'H1', 'H2', 'H3', 'H4', 'H5')
hold off;

figure(2);
pzmap(b1, 1);
hold on;
pzmap(b2, 1);
hold on;
pzmap(b3, 1);
hold on;
pzmap(b4, 1);
hold on;
pzmap(b5, 1);
hold off

%%
%Subpunctul b)
teta2 = 2*pi/3;

c1 = r1 * exp(j * teta2);
b1 = [1 -c1];
H1 = freqz(b1, 1, omega);
figure;
plot(omega, abs(H1));
hold on;

c2 = r2 * exp(j * teta2);
b2 = [1 -c2];
H2 = freqz(b2, 1, omega);
plot(omega, abs(H2));
hold on;

c3 = r3 * exp(j * teta2);
b3 = [1 -c3];
H3 = freqz(b3, 1, omega);
plot(omega, abs(H3));
hold on;

c4 = r4 * exp(j * teta2);
b4 = [1 -c4];
H4 = freqz(b4, 1, omega);
plot(omega, abs(H4));
hold on;

c5 = r5 * exp(j * teta2);
b5 = [1 -c5];
H5 = freqz(b5, 1, omega);
plot(omega, abs(H5));
legend( 'H1', 'H2', 'H3', 'H4', 'H5')
hold off;

%Modificand valoarea lui teta  modific valoarea in jurul careia are loc
%atenuare.
