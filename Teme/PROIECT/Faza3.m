%% Subpunctul b)

x = 9;                  %1 - Fereastra dreptunghiulara
                        %2 - Fereastra triunghiulara
                        %3 - Fereastra Blackman
                        %4 - Fereastra Cebisev
                        %5 - Fereastra Hamming
                        %6 - Fereastra Hanning
                        %7 - Fereastra Kaiser
                        %8 - Fereastra Tuckey
                        %9 - Fereastra Lanczos

omega_p = 0.3*pi;
omega_s = 0.4*pi;

switch x
    case 1
        M = 20;
        omega_c = 0.35;
        w = boxcar(M) ;
        h = fir1(M-1,omega_c,w) ;
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
    case 2
        M = 26;
        omega_c = 0.39563;
        w = triang(M);
        h = fir1(M-1,omega_c,w) ;
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
    case 3
        M = 30;
        omega_c = 0.4032;
        w = blackman(M) ;
        h = fir1(M-1,omega_c,w) ;
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
    case 4
        r = 90;
        M = 33;
        omega_c = 0.40025;
        w = chebwin(M,r) ;
        h = fir1(M-1,omega_c,w) ;
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
    case 5
        M = 24;
        omega_c = 0.40072;
        w = hamming(M) ;
        h = fir1(M-1,omega_c,w) ;
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
    case 6
        M = 23;
        omega_c = 0.3996;
        w = hanning(M) ;
        h = fir1(M-1,omega_c,w) ;
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
    case 7
        M = 32;
        beta = 9;
        omega_c = 0.39883;
        w = kaiser(M,beta) ;
        h = fir1(M-1,omega_c,w) ;
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
    case 8
        M = 32;
        alfa = 0.33;
        omega_c = 0.3987;
        w = tukeywin(M,alfa) ;
        h = fir1(M-1,omega_c,w) ;
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
    case 9
        M = 41;
        
        L = 1;
        omega_c = 0.35;
        n = 0 : M-1;
        w = (sinc(2*(2*n-M+1)/(2*(M-1)))).^L;
        h = fir1(M-1,omega_c,w) ;
        freqz(h,1,0:pi/1000:pi)
        [delta_p, delta_s] = functie3_a(h, omega_p, omega_s);
end