%2021-10-25
%Hamed Baghal Ghaffari
%Plotting the Spectrum Accumulation. The result should 2c.
clear;clc;close all;
x=0:1/10:1;
%please chane the number c
c=1;
m=80;

hold on
plot(x,onedimaccumulativespectrum(x,c,m,1),'--','LineWidth',3,'DisPlay','sum of eigenvalue and prolate for num=1 with c=1')
plot(x,onedimaccumulativespectrum(x,c,m,2),'--','LineWidth',3,'DisPlay','sum of eigenvalue and prolate for num=3 with c=1')
plot(x,onedimaccumulativespectrum(x,c,m,10),'--','LineWidth',3,'DisPlay','sum of eigenvalue and prolate for num=19 with c=1')
legend('Location','northeast','FontSize',15)
grid on


function S=onedimaccumulativespectrum(x,c,m,num)
S=0;
for i=1:num
%    if mod(i,2)==1
       S=S+c*(abs(eveneigenvalueofprolate(c,m,i))).^2.*(evencomputeprolate(x,c,m,i)).^2+c*(abs(oddeigenvalueofprolate(c,m,i))).^2.*(oddcomputeprolate(x,c,m,i)).^2; 
%    end
end
end