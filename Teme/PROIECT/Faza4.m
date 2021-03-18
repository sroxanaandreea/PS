% Gasirea celui mai bun filtru trece-jos de tip FIR
%Conditii pentru clasificare: 
%1) Ordinul M sa fie cat mai mic
%2) In caz ca ordinele sunt egale, filtrul cu abaterea cea mai mica castiga

% Astfel , clasificarea este:
%1)Lanczos (M=21)
%2)Hanning (M-23)
%3)Hamming (M=24)
%4)Triunghilar (M=26)
%5)Dreptunghiular (M=27)
%6)Blackman (M=30)
%7)Kaiser   (M=32, delta_p + delta_s = 0,0958)
%8)Tuckey   (M=32, delta_p + delta_s = 0,1025)
%9)Cebisev  (M=33)