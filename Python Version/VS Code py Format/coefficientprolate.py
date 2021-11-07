#Hamed Baghal Ghaffari
#2021-10-17
#This Function gives us the eigenvectors of the prolatematrix after sorting the eigenvalues.
from numpy import linalg

from Prolatematrix import Prolatematrix

def coefficientprolate(c,m,n):
    A=Prolatematrix(c,m)
    eigenValues, eigenVectors = linalg.eig(A)
    idx = eigenValues.argsort()[::+1]   
    eigenValues = eigenValues[idx]
    eigenVectors = eigenVectors[:,idx]
    return eigenVectors[:,n]

#print(coefficientprolate(1,4,1))