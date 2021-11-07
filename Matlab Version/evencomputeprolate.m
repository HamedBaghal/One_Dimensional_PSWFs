%2021-10-25
%Hamed Baghal Ghaffari
%This code computes the even PSWFs.
function y=evencomputeprolate(x,c,m,n)
y=0;
W=coefficientprolate(c,m,2*n-1);
for k=0:m/2-1
    y=y+W(2*k+1)*sqrt(2*k+1/2)*legendreP(2*k,x);
end
end