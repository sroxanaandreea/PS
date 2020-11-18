%%
%Subpunctul a)
clc; clear;

teta = pi/6;
omega = -pi : 0.01 : pi;
j = sqrt(-1);

%Alegem mai multe valori aleatoare pentru r in intervalul (0,1)
r1 = 0;
r2 = 0.3;
r3 = 0.52;
r4 = 0.73;
r5 = 1;

a1 = [1 -2*r1*cos(teta) r1*r1];
H1 = freqz(1, a1, omega);
figure;
plot(omega, abs(H1));
hold on;

a2 = [1 -2*r2*cos(teta) r2*r2];
H2 = freqz(1, a2, omega);
plot(omega, abs(H2));
hold on;

a3 = [1 -2*r3*cos(teta) r3*r3];
H3 = freqz(1, a3, omega);
plot(omega, abs(H3));
hold on;

a4 = [1 -2*r4*cos(teta) r4*r4];
H4 = freqz(1, a4, omega);
plot(omega, abs(H4));
hold on;

a5 = [1 -2*r5*cos(teta) r5*r5];
H5 = freqz(1, a5, omega);
plot(omega, abs(H5));
legend( 'H1', 'H2', 'H3', 'H4', 'H5')
hold off;

%%
%Subpunctul b)
