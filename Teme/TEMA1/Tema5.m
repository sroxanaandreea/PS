miu = 0;
sigma = 1;
n = -4 : 0.1 : 4;       %Interval de reprezentare
f = @(x) (1 /(sigma * sqrt (2 * pi ))* exp(-(( x - miu ).^2) /(2 * sigma * sigma ))); %Relatia 1.19 implementata in matlab

N1 = 4850;           %Aleg un suport N a carui valoarea sa fie in jur de 5000
x1 = randn ( 1, N1); %Generarea semnalului aleator cu distributie gaussiana
figure; hold on;
hist(x1);                %Trasez histograma semnalului generat cu randn
plot(n, f(n)*N1, 'r')    %Trasarea graficului.
hold off;

N2 = 9234;           %Aleg un suport N a carui valoarea sa fie in jur de 9000
x2 = randn(1, N2);
figure; hold on;
hist(x2);                %Trasez histograma semnalului generat cu randn
plot(n, f(n)*N2, 'b')    %Trasarea graficului.
hold off;

N3 = 15172;          %Aleg un suport N a carui valoarea sa fie in jur de 9000
x3 = randn(1, N3);
figure; hold on;
hist(x3);                %Trasez histograma semnalului generat cu randn
plot(n, f(n)*N3, 'g')    %Trasarea graficului.
hold off;

%Concluzie:
%Cand N creste, creste si semnalul generat de functia randn fata de
%semnalul gaussian.Acesta se departeaza vizibil de clopot odata cu
%cresterea lui N.