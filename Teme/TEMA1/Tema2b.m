function [x] = Tema2b(omega, Ts, M)
    
    %omega = (2*pi)/3; %pulsatia
    %Ts = 1; %perioada de esantionare
    %M = 10 % lungimea suport semnal discretizat

    n = 0 : M-1;
    x = sin(omega * n * Ts);  %semnalul discret
end
