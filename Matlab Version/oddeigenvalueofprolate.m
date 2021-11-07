%2021-10-25
%Hamed Baghal Ghaffari
%This code calculates the odd eigenvalue of the finite Fourier
%transformation.
function y=oddeigenvalueofprolate(c,m,n)
W=coefficientprolate(c,m,2*n);
y=(1i*W(2)*sqrt(2/3)*2*pi*c)/(linearcomboddlegendreatzero(c,m,n));
end


function T=linearcomboddlegendreatzero(c,m,n)
T=0;
W=coefficientprolate(c,m,2*n);
for j=0:(m-1)/2
    T=T+W(2*j+2).*sqrt(2*j+(3/2)).*(((-1)^(j)).*(factorial(2*j+2)))./(factorial(j)*factorial(j+1)*2^(2*j+1));
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

