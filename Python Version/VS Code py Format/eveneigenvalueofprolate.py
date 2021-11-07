#Hamed Baghal Ghaffari
#2021-10-17
#This function calculates the eigenvalues of the even PSWFs.
from coefficientprolate import coefficientprolate
from linearcombevenlegendreatzero import linearcombevenlegendreatzero
import math
def eveneigenvalueofprolate(c,m,n):
    W=coefficientprolate(c,m,2*n)
    y=(W[0]*math.sqrt(2))/(linearcombevenlegendreatzero(c,m,n))
    return y


#print(eveneigenvalueofprolate(1,20,1))