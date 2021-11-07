#Hamed Baghal Ghaffari
#2021-10-20
#This is linear  combination of even PSWFs' coefficients multiplied with even legendres at zero.
from coefficientprolate import coefficientprolate
import math
def linearcombevenlegendreatzero(c,m,n):
    T=0
    W=coefficientprolate(c,m,2*n)
    for j in range(m//2 - 1):
        T=T+W[2*j]*math.sqrt(2*j+(1/2))*(((-1)**(j))*(math.factorial(2*j)))/(math.factorial(j)*math.factorial(j)*2**(2*j))
    return T

#print(linearcomboddlegendreatzero(1,20,0))    
