%2021-10-25
%Hamed Baghal Ghaffari
%This code calculates the even eigenvalue of the finite Fourier
%transformation.
function y=eveneigenvalueofprolate(c,m,n)
W=coefficientprolate(c,m,2*n-1);
y=(W(1).*sqrt(2))./(linearcombevenlegendreatzero(c,m,n));
end


function T=linearcombevenlegendreatzero(c,m,n)
T=0;
W=coefficientprolate(c,m,2*n-1);
for j=0:m/2-1
    T=T+W(2*j+1).*sqrt(2*j+(1/2)).*(((-1)^(j)).*(factorial(2*j)))./(factorial(j)*factorial(j)*2^(2*j));
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

