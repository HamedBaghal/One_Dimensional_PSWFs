%2021-10-25
%Hamed Baghal Ghaffari
%This code computes the PSWFs.
function y=computeprolate(x,c,m,n)
y=0;
W=coefficientprolate(c,m,n);
for k=1:m
    y= y + W(k).*sqrt(k-1/2).*legendreP(k-1,x);
end
end