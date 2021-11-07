%2021-10-25
%Hamed Baghal Ghaffari
%plots of PSWFs of some orders n and parameters c

m=200;
c=1;

x = linspace(-1,1);
y1=computeprolate(x,c,m,1);
y2=computeprolate(x,c,m,2);
y3=computeprolate(x,c,m,4);
plot(x,y1,x,y2,x,y3)

grid on



% This is the tridiagonal Matrix which we obtained in page 5

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
