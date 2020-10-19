function Tema2c(omega, Ts, M)
    %Functia Tema2c reprezinta graficul dintre semnalul sinusoidal si cel
    %dinscret , apeland functia in care am calculat semnalul discret la
    %punctul b)
    %omega = (2*pi)/3; %pulsatia
    %Ts = 1; %perioada de esantionare
    %M = 10 % lungimea suport semnal discretizat

    n = 0 : M-1;
    t = 0 : 0.01 : M-1;
    xa = sin( omega * t);
    x = Tema2b(omega, Ts, M);
    figure ; hold on;
    plot (t, xa, 'b'); %graficul pentru semnalul continuu
    stem (n, x, 'r'); %graficul pentru semnalul discret
    hold off;

end
