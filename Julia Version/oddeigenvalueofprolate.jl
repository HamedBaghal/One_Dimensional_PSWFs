#Hamed Baghal Ghaffari
#2021-10-20
#This function calculates the eigenvalues of the odd PSWFs
function oddeigenvalueofprolate(c,m,n)
    global W
    W=coefficientprolate(c,m,2*n);
    y=(1im*W[2]*sqrt(2/3)*2*pi*c)/(linearcomboddlegendreatzero(c,m,n));
    return y
end
