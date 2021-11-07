%2021-10-25
%Hamed Baghal Ghaffari
%This code computes quatients of finite Fourier of PSWFs over the same
%PSWFs.
function T=evenclassicquatientFourieronprolateat(t,c,m,n)
%choose odd n to get answer
y1=computeprolate(t,c,m,n);
y2=real(finitefourierprolate(t,c,m,n));
T=(y2./y1);
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

function y=computeprolate(x,c,m,n)
y=0;
W=coefficientprolate(c,m,n);
for k=1:m
    y= y + W(k).*sqrt(k-1/2).*legendreP(k-1,x);
end
end

function G=finitefourierlegendre(t,c,n)
G=zeros(1,length(t));
for i=1:length(t)
if t(i)==0
    if n==0
    G(i)=sqrt(2);
    else
    G(i)=0;    
    end
end    
if c==0    
    if n==0
    G(i)=sqrt(2);
    else
    G(i)=0;    
    end
end
if t(i)>0 
    if c>0 
    G(i)=(sqrt(1/2+n)).*((1i).^n).*1./sqrt(c.*t(i)).*besselj(n+1/2,2.*pi.*c.*t(i));
    end
end
end
end

function y=finitefourierprolate(t,c,m,n)
y=0;
W=coefficientprolate(c,m,n);
for k=1:m
    y= y + W(k).*finitefourierlegendre(t,c,k-1);
end
end
