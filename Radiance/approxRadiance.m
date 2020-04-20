
close all
clear all
clc

epsilon = 1;
C1 = 3.74*10^(-6); %m
C2 = 1.44*10^(-2);

TC = 0:800;
T = TC + 273.15; %K

lambda = 1.6*10^(-6);
L1 = epsilon*C1./(pi*lambda^5.*(exp(C2./(lambda*T))-1))*10^(-6);


lambda = 3.7*10^(-6);
L2 = epsilon*C1./(pi*lambda^5.*(exp(C2./(lambda*T))-1))*10^(-6);


lambda = 11*10^(-6);
L3 = epsilon*C1./(pi*lambda^5.*(exp(C2./(lambda*T))-1))*10^(-6);


plot(TC,L1)
hold on

plot(TC,L2,'r')

plot(TC,L3,'g')

legend('1.6 \mu m','3.7 \mu m','11 \mu m')
hold off




figure

lambda = (0:0.1:3)*10^(-6);

T = 3000;
L1 = epsilon*C1./(pi*lambda.^5.*(exp(C2./(lambda*T))-1))*10^(-6);


T = 4000;
L2 = epsilon*C1./(pi*lambda.^5.*(exp(C2./(lambda*T))-1))*10^(-6);


T = 5000;
L3 = epsilon*C1./(pi*lambda.^5.*(exp(C2./(lambda*T))-1))*10^(-6);


plot(lambda,L1)
hold on

plot(lambda,L2,'r')

plot(lambda,L3,'g')


% plot(lambda(16:end),epsilon*C1./(pi*lambda(16:end).^5).*exp(-C2./(lambda(16:end)*5000))*10^(-6),'k')
% plot(lambda(16:end),epsilon*C1./(pi*lambda(16:end).^5.*(exp(C2./(lambda(16:end)*T))))*10^(-6),'k')
T = inf;
L4 = epsilon*C1./(pi*lambda.^5.*(exp(C2./(lambda*T))))*10^(-6);
plot(lambda(16:end),L4(16:end),'k')


legend('3000 K','4000 K','5000 K','Ultra catastrophe')
hold off
