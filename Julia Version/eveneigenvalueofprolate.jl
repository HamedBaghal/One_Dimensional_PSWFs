#Hamed Baghal Ghaffari
#2021-10-20
#This function calculates the eigenvalues of the even PSWFs
function eveneigenvalueofprolate(c,m,n)
    global W
    W=coefficientprolate(c,m,2*n-1);
    y=(W[1]*sqrt(2))/(linearcombevenlegendreatzero(c,m,n));
    return y
end
