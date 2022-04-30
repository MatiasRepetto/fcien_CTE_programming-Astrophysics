clear;
clc;

v = [0.950, 0.763, 0.449, 0.491, 0.743, 0.906, 1.136, 0.331, 0.312, 0.364, 0.436, 0.630, 0.456, 0.623, 0.504, 0.580, 0.840, 0.651, 0.568, 0.500];
T = [3050, 3800, 6450, 5900, 3900, 3200, 2550, 8750, 9300, 7950, 6650, 4600, 6350, 4650, 5750, 5000, 3450, 4450, 5100, 5800];

Tinv = 1./T;
p = polyfit(Tinv, v, 1);

j = (p(1)*Tinv)+p(2);

hold on;
scatter(Tinv, v);
plot(Tinv,j);
