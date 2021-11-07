%2021-09-25
%Hamed Baghal Ghaffari
%This code computes the eigenvectors of the prolatematrix after sorting the
%corresponding eigenvalues.
function W=coefficientprolate(c,m,n)
A=prolatematrix(c,m);
[V,D]=eig(A);
[S,I]=sort(diag(D));
W=V(:,n);
%N=S(:,1);