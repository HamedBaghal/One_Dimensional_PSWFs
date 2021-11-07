#Hamed Baghal Ghaffari
#2021-10-20
#This is linear  combination of odd PSWFs' coefficients multiplied with odd legendres at zero.
function linearcomboddlegendreatzero(c,m,n)
    global T
    global W
    T=0;
    W=coefficientprolate(c,m,2*n);
    for j=0:div(m-1,2)
        T=T+W[2*j+2]*sqrt(2*j+(3/2))*(((-1)^(j))*(factorial(2*j+2)))/(factorial(j)*factorial(j+1)*2^(2*j+1));
    end
    return T
end
