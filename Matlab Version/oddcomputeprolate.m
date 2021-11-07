%2021-10-25
%Hamed Baghal Ghaffari
%This code computes the odd PSWFs.
function y=oddcomputeprolate(x,c,m,n)
y=0;
W=coefficientprolate(c,m,2*n);
for k=0:m/2-1
    y=y+W(2*k+2)*sqrt(2*k+3/2)*legendreP(2*k+1,x);
end
end