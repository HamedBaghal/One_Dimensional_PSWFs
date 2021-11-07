%2021-10-25
%Hamed Baghal Ghaffari
%Plotting the Eigenvales of the PSWFs Using Zero Point
clear; clc; close all;
m=80;
c=1;
T=zeros(1,20);
for k=1:10
T(2*k-1)=abs(eveneigenvalueofprolate(c,m,k));
T(2*k)=abs(oddeigenvalueofprolate(c,m,k));
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