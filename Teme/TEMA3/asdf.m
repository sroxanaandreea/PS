%% a)
clc; clear all; close all;

pi=3.14;
teta=5*pi/7;
omega=-pi:0.01:pi;

for i=1:5
    r=[0 0.2 0.45 0.8 1]; %am ales 5 valori intre 0 si 1
    a=[1 -2*r(i)*cos(teta) r(i)^2]; %coeficientii numitorului functiei de 
    %transfer in ordinea descrescatoare a puterilor, conform relatiei 3.11
    G=freqz(1, a, omega);
    
    figure(1)
    subplot(1, 5, i)
    zplane(a,1);
    hold on;
    %legend('r=0', 'r=0.2', 'r=0.45', 'r=0.8', 'r=1')
    
    figure(2) 
    subplot(3,1,1)
    xlabel('Frecventa normalizata');
    ylabel('Amplitudine');
    plot(omega/pi, abs(G)) %axa Ox este normalizata prin impartirea
    %pulsatiilor la pi
    hold on;
    legend('r=0', 'r=0.2', 'r=0.45', 'r=0.8', 'r=1')
    
    subplot(3,1,2) 
    xlabel('Frecventa normalizata');
    ylabel('Amplitudine(db)');
    plot(omega/pi, 20*log(abs(G)))
    hold on;
    
    subplot(3,1,3) 
    xlabel('Frecventa normalizata');
    ylabel('Faza');
    plot(omega/pi, phase(G))
    hold on;

end
hold off;

%graficele amplitudinii sunt in oglinda fata de axa Ox comparativ cu
%graficele amplitudinii pentru FIR de ordin 2 (abscisa poate fi privita ca
%o linie de fractie avand in vedere ca la IIR functia de transfer este
%G(z)=1/H(z), iar la FIR este H(z))

%% b)
%clc; clear all; close all;

pi=3.14;
teta=5*pi/7;
omega=-pi:0.01:pi;

for i=1:5
    r=[0 0.2 0.45 0.8 1]; %am ales 5 valori intre 0 si 1
    a=[1 -2*r(i)*cos(teta) r(i)^2]; %coeficientii numitorului functiei de 
    %transfer in ordinea descrescatoare a puterilor, conform relatiei 3.11
    G=freqz(1, a, omega);
    G_0=1/(1-2*r(i)*cos(teta)+r(i)^2);
    G_n=G/G_0; %normez filtrul
    
    figure(3)
    subplot(1, 5, i)
    zplane(a,1);
    hold on;
    %legend('r=0', 'r=0.2', 'r=0.45', 'r=0.8', 'r=1')
    
    figure(4) 
    subplot(3,1,1)
    xlabel('Frecventa normalizata');
    ylabel('Amplitudine');
    plot(omega/pi, abs(G_n)) %axa Ox este normalizata prin impartirea 
    %pulsatiilor la pi
    hold on;
    legend('r=0', 'r=0.2', 'r=0.45', 'r=0.8', 'r=1')
    
    subplot(3,1,2) 
    xlabel('Frecventa normalizata');
    ylabel('Amplitudine(db)');
    plot(omega/pi, 20*log(abs(G_n)))
    hold on;
    
    subplot(3,1,3) 
    xlabel('Frecventa normalizata');
    ylabel('Faza');
    plot(omega/pi, phase(G_n))
    hold on;

end
hold off;