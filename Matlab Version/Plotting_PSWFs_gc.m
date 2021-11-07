%2021-07-10
%Hamed Baghal Ghaffari
%Plotting the PSWFs and g_c of the PSWFs and the divisions

t=0:1/50:1;
y1 = abs(computeprolate(t,1,200,3));
plot(t,y1,'y-','DisplayName','1=2 prolate with c=1','LineWidth',5);
hold on
lgd = legend;
lgd.FontSize = 14;

%if n is even then we have to multiply by 1i as odd prolates have purely imaginary eigenvalues. 
y2 = abs(finitefourierprolate(t,1,200,3));
plot(t,y2,'b--','DisplayName','g_c(prolate) with c=1','LineWidth',2);
plot(t,y2./y1,'r','DisplayName','ratio g_c(prolate) on prolate','LineWidth',3);
legend('Location','southwest');
grid on


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
%    if abs(W(k))>1/10000
    y= y + W(k).*sqrt(k-1/2).*legendreP(k-1,x);
%    end
end
end



function y=finitefourierprolate(t,c,m,n)
y=0;
W=coefficientprolate(c,m,n);
for k=1:m
%    if abs(W(k))>1/10000
    y= y + W(k).*finitefourierlegendre(t,c,k-1);
%    end
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






