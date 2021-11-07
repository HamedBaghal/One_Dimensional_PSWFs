#Hamed Baghal Ghaffari
#2021-10-17
#This computes the PSWFs
from scipy.special import legendre
import math
from coefficientprolate import coefficientprolate


def computeprolate(x,c,m,n):
        y=0
        W=coefficientprolate(c,m,n)
        for k in range(m):
            y=y+W[k]*(math.sqrt(k+1/2))*legendre(k)(x)
        return y


print(computeprolate(.3,1,20,0))