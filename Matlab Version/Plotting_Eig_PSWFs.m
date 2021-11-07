%2021-10-21
%Hamed Baghal Ghaffari
%Plotting the Eigenvales of the PSWFs using a point other than zero
clear; clc; close all;
x=.5;
c=2;
T=zeros(1,20);
for k=1:10
y1=abs(computeprolate(x,c,200,2*k-1));
y2=abs(finitefourierprolate(x,c,200,2*k-1));
T(2*k-1)=y2./y1;
y1=abs(computeprolate(x,c,200,2*k));
y2=abs(finitefourierprolate(x,c,200,2*k));
T(2*k)=y2./y1;
end
t=0:19;
plot(t,T,'b','DisplayName','Eigenvalues of PSWFs for c=2','LineWidth',3)
hold on
plot(t,T,'*r','DisplayName','')
legend('Location','northeast','FontSize',15);
title('Changes of the Eigenvalues of the First 20 PSWFs for c=2','FontSize',20)
ylabel('Absolute Value of the Eigenvalues','FontSize',15) 
xlabel('n changes from 1 to 20','FontSize',15)
grid on