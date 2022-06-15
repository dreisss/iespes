import matplotlib.pyplot as plot
import math

lambda_ = 299392458/915000000
gamma = 3.4108
c1 = 20 + 3 + 8.15 - 1 + 10 * math.log10((lambda_ / (4 * math.pi))**2)
c2 = - 10 * gamma

d = range(1, 3000)
f_d = [c1 + c2 * math.log10(x) for x in d]

plot.plot(d, f_d)
plot.ylabel("RSSI(dBm)");
plot.xlabel("Distância(m)")
plot.axis([0, 3000, -140, 0])
plot.grid()

plot.show()
