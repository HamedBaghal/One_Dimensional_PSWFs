%2021-09-25
%Hamed Baghal Ghaffari
%This code generated the truncated prolate matrix which is
%doubly-tridiagonal.
function M=prolatematrix(c,m)
%format long
 %m=3;c=5;
M=zeros(m,m);

% M(1,1)=4*(pi).^2*(c^2)/3;
% M(1,3)=8*(pi).^2*(c^2)/(3*sqrt(5));
% M(3,1)=8*(pi).^2*(c^2)/(3*sqrt(5));
% 
% for i=1       :m-3
%  M(i+1,i+3)=(4*pi.^2*c^2)*(i+2)*(i+1)/((2*i+3)*sqrt((2*i+5)*(2*i+1)));
% end
% 
% for i=1:m-1
% M(i+1,i+1)=(i+1)*i+((4*pi.^2*c^2)*(2*i^2+2*i-1))/((2*i+3)*(2*i-1));
% end
% 
% for i=3:m-1
% M(i+1,i-1)=(4*pi.^2*c^2)*(i)*(i-1)/((2*i-1)*sqrt((2*i-3)*(2*i+1)));
% end

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