#Hamed Baghal Ghaffari
#2021-10-20
#This Function gives us the doubly finite tridiagonal matrix.
function prolatematrix(c,m)
    M=zeros(m,m)
    for i=2:m-1
        M[i-1,i+1]=(4*pi^2*c^2)*(i)*(i-1)/((2*i-1)*sqrt((2*i+1)*(2*i-3)));
    end

    for i=1:m
        M[i,i]=(i-1)*i+((4*pi^2*c^2)*(2*i^2-2*i-1))/((2*i+1)*(2*i-3));
    end

    for i=3:m
        M[i,i-2]=(4*pi.^2*c^2)*(i-1)*(i-2)/((2*i-3)*sqrt((2*i-5)*(2*i-1)));
    end
    return M
end
