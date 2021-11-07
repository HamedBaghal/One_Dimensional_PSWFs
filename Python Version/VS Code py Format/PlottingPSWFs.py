#Hamed Baghal Ghaffari
#2021-10-17
#This code plots several PSWFs together.
import numpy
import matplotlib.pyplot as plt
from computeprolate import computeprolate

x = numpy.linspace(-1,1,1000)
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('zero')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

plt.plot(x,computeprolate(x,1,80,0))
plt.plot(x,computeprolate(x,1,80,1))
plt.plot(x,computeprolate(x,1,80,3))
plt.plot(x,computeprolate(x,1,80,9))
plt.grid()
# show the plot
plt.show()