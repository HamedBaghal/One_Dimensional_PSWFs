#Hamed Baghal Ghaffari
#2021-10-17
#This Function gives us the doubly finite tridiagonal matrix.
#function Prolatematrix(c,m)
import math
import numpy
def Prolatematrix(c,m):
    M=numpy.zeros((m,m))
    for i in range(m-2):
        M[i,i+2]=(4*(math.pi)**2*c**2)*(i+2)*(i+1)/((2*i+3)*math.sqrt((2*i+5)*(2*i+1)))
    for i in range(m):
        M[i,i]=(i+1)*i+((4*(math.pi)**2*c**2)*(2*i**2+2*i-1))/((2*i+3)*(2*i-1))
    for i in range(m-2):
        M[i+2,i]=(4*(math.pi)**2*c**2)*(i+2)*(i+1)/((2*i+3)*math.sqrt((2*i+5)*(2*i+1)))
    return M

#print(Prolatematrix(1,4))