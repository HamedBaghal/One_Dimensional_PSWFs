#Hamed Baghal Ghaffari
#2021-10-17
#This code Plots the Eigenvalues of the finite Fourier Transformation.
from oddeigenvalueofprolate import oddeigenvalueofprolate
from eveneigenvalueofprolate import eveneigenvalueofprolate

def PlottingEigenvalues(c,m,n):
    T=[]
    for i in range(n):
        T.append(abs(eveneigenvalueofprolate(c,m,2*i)))
        T.append(abs(oddeigenvalueofprolate(c,m,2*i+1)))
    return T



#print(PlottingEigenvalues(1,40,5))