#Hamed Baghal Ghaffari
#2021-10-17
#This function calculates the eigenvalues of the odd PSWFs.
from coefficientprolate import coefficientprolate
from linearcomboddlegendreatzero import linearcomboddlegendreatzero
import math
def oddeigenvalueofprolate(c,m,n):
    W=coefficientprolate(c,m,2*n+1)
    y=(1j*W[1]*math.sqrt(2/3)*2*math.pi*c)/(linearcomboddlegendreatzero(c,m,n))
    return y

#print(oddeigenvalueofprolate(1,20,1))