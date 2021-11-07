from PlottingEigenvalues import PlottingEigenvalues
import numpy
import matplotlib.pyplot as plt


x = numpy.linspace(-1,1,100)
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
#ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('zero')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

plt.plot(PlottingEigenvalues(1,40,5))
plt.plot(PlottingEigenvalues(2,40,5))
plt.grid()
# show the plot
plt.show()