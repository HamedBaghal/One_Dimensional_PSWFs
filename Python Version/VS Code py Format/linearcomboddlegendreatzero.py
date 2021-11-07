#Hamed Baghal Ghaffari
#2021-10-20
#This is linear  combination of odd PSWFs' coefficients multiplied with odd legendres at zero.
from coefficientprolate import coefficientprolate
import math
def linearcomboddlegendreatzero(c,m,n):
    T=0
    W=coefficientprolate(c,m,2*n+1)
    for j in range((m-1)//2):
        T=T+W[2*j+1]*math.sqrt(2*j+(3/2))*(((-1)**(j))*(math.factorial(2*j+2)))/(math.factorial(j)*math.factorial(j+1)*2**(2*j+1))
    return T


#print(linearcomboddlegendreatzero(1,20,0))