%2021-10-18
%Hamed Baghal Ghaffari
%This code compute the PSWFs at zero
%Choose c, m , n
c=1;
m=40;
n=1;

computeprolateatzero(c,m,n)


function y=computeprolateatzero(c,m,n)
y=0;
W=coefficientprolate(c,m,n);
for k=1:m
    y= y + W(k).*sqrt(k-1/2).*legendreP(k-1,0);
end
end




function M=prolatematrix(c,m)

M=zeros(m,m);

for i=2:m-1
 M(i-1,i+1)=(4*pi.^2*c^2)*(i)*(i-1)/((2*i-1)*sqrt((2*i+1)*(2*i-3)));
end

for i=1:m
M(i,i)=(i-1)*i+((4*pi.^2*c^2)*(2*i^2-2*i-1))/((2*i+1)*(2*i-3));
end

for i=3:m
M(i,i-2)=(4*pi.^2*c^2)*(i-1)*(i-2)/((2*i-3)*sqrt((2*i-5)*(2*i-1)));
end

end




function W=coefficientprolate(c,m,n)
A=prolatematrix(c,m);
[V,D]=eig(A);
[S,I]=sort(diag(D));
W=V(:,n);
end