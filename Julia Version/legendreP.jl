#Hamed Baghal Ghaffari
#2021-10-20
#This Function calculates the legendre polynomial at any point.
#I got this idea from the book of
#"First Semester in Numerical Analysis with Julia" by "Giray Ökten" page 207 using Bonnet Recursion.
function legendreP(x,n)
        n==0 && return 1
        n==1 && return x
        ((2*n-1)/n)*x*legendreP(x,n-1)-((n-1)/n)*legendreP(x,n-2)
end
