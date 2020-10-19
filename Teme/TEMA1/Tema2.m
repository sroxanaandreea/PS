%Punctul a)
load sunet_a.mat
load sunet_i.mat
load sunet_s.mat
load xilo.mat

Fsa = 8000;
Fsi = 8000;
Fss = 8000;
Fsx = 44100;
da = length(ya)/Fsa %durata semnalului sunetului a
di = length(yi)/Fsi %durata semnalului sunatului i
ds = length(ys)/Fss %durata semnalului sunetului s
dx = length(yx)/Fsx %durata semnalului sunetului xilo

%Punctul b)

omega = (2*pi)/3; %pulsatia
Ts = 1; %perioada de esantionare
M = 10 % lungimea suport semnal discretizat

x = Tema2b(omega, Ts, M)

%Punctul c)

Tema2c(omega, Ts, M)