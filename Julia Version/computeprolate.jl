#Hamed Baghal Ghaffari
#2021-10-20
#This computes the PSWFs
function computeprolate(x,c,m,n)
        global y
        global W
        y=0;
        W=coefficientprolate(c,m,n);
        for k=1:m
                y=y+W[k]*sqrt(k-1/2)*legendreP(x,k-1);
        end
        return y
end
