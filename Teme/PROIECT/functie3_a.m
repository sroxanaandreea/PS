function[delta_p, delta_s] = functie3_a(h,omega_p, omega_s)
    
    grila_frecv_p = 0 : omega_p/1000 : omega_p;  %Se genereaza punctele
    H_p = freqz(h, 1, grila_frecv_p);
    delta_p = max(abs(1-abs(H_p)));
    
    grila_frecv_s = omega_s : omega_s/1000 : pi;  %Se genereaza punctele
    H_s = freqz(h, 1, grila_frecv_s);
    delta_s = max(abs(H_s));
end