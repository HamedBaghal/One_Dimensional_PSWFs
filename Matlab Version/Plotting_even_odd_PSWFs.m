%2021-10-19
%Hamed Baghal Ghaffari
%In this code we plot even and odd PSWFs for the varieties of n
clear all; clc; close all;
% Size of the matrix or the number Legendre Functions that you would like
% to use
m=200;

t=-1:.01:1;

% Please enter the order of PSWFs n
n=1;

% Bandwidth of PSWFs
c=1;

grid on
hold on
legend('Location','northwest');

y1=evencomputeprolate(t,c,m,n);
plot(t,y1,'DisplayName','PSWFs with n=0 and c=1','LineWidth',5);

y2=oddcomputeprolate(t,c,m,n);
plot(t,y2,'DisplayName','PSWFs with n=1 c=1','LineWidth',5);
