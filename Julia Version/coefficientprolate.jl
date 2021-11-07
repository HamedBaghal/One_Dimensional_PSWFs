#Hamed Baghal Ghaffari
#2021-10-20
#This Function gives us the eigenvectors of the prolatematrix after sorting the eigenvalues.
function coefficientprolate(c,m,n)
        A=prolatematrix(c,m);
        V=eigvecs(A);
        W=V[:,n];
        return W
end

using LinearAlgebra
