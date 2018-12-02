import numpy as np
import matplotlib.pyplot as plt


n = 1000
t = np.linspace(0, 8, n)
T = t[1] - t[0]  # sampling width

x1 = np.where(t<=4, 1, 0) # build input functions
x2 = np.where(np.logical_and(t>=4, t<=6), 2, 0)

y = np.convolve(x1, x2, mode='full') * T  # scaled convolution
ty = np.linspace(0, 2*8, n*2-1)  # double time interval

# plot results:
fg, ax = plt.subplots(1,1)

ax.plot(t, x1, label="$x_1$")
ax.plot(t, x2, label="$x_2$")
ax.plot(ty, y, label="$x_1\\star x_2$")
ax.legend(loc='best')
ax.grid(True)

fg.canvas.draw()