d = 0:0.4:3000;

Ptx = 20; % dBm
Gtx = 3; % dBi
Grx = 8.15; % dBi
Lcabo = 1; % dB
lambda = 299392458/915000000; % m
gamma = 3.4108;

Pxr = Ptx + Gtx + Grx - Lcabo + 10 * log10((lambda / (4 * pi).^2)) - 10 * gamma * log10(d);

xlabel ("Distancia(m)");
ylabel ("RSSI(dBm)");
title ("Graph");

plot (d, Pxr);
