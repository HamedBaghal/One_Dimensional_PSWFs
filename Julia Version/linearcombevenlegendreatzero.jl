#Hamed Baghal Ghaffari
#2021-10-20
#This is linear  combination of even PSWFs' coefficients multiplied with even legendres at zero.
function linearcombevenlegendreatzero(c,m,n)
    global T
    global W
    T=0;
    W=coefficientprolate(c,m,2*n-1);
    for j=0:div(m,2)-1
        T=T+W[2*j+1]*sqrt(2*j+(1/2))*(((-1)^(j))*(factorial(2*j)))/(factorial(j)*factorial(j)*2^(2*j));
    end
    return T
end
