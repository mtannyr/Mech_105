clear
clc

% Function parameters
q0 = 10;
R = 60;
L = 9;
C = 0.00005;

% Use linspace to create an array of 100 points between 0 and 0.8
t = linspace(0,.8,100);

% Calculate the values of q
 q = q0.*exp(-R.*t./(2*L)).*cos(sqrt((L*C)^-1)-(R/(2*L))^2.*t);

% Plot q vs t
% plot(t,q)
% hold on
% Make the capacitor 10x bigger
C= C*10;
 q2 = q0.*exp(-R.*t/(2*L)).*cos(sqrt((L*C)^-1)-(R/(2*L))^2.*t);

% Plot q2 vs t
x=t;
y=q;
y2=q2;

subplot(3,1,[1,2])
plot(x,y,x,y2)
% subplot(2,1,2)
% plot(x,y2)

 xlabel('Time')
 ylabel('Charge')