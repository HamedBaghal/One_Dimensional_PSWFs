#Hamed Baghal Ghaffari
#2021-10-20
#This code Plots the Eigenvalues of the finite Fourier Transformation.
function PlottingEigenvalues(c,m)
    #T=zeros(1,m)
    T=[0.0 for i=1:m]
    for i=1:div(m,2)
        T[2*i-1]=abs(eveneigenvalueofprolate(c,m,i));
        T[2*i]=abs(oddeigenvalueofprolate(c,m,i));
    end
    return T
end

using Plots
pyplot()

F=PlottingEigenvalues(1,20);
G=PlottingEigenvalues(2,20);

plot(F)
plot!(G)
#plot([T[i] for i=1:10])
