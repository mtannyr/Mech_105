clear
clc

% Given experimental data
t_exp = 10:10:60;
c_exp = [3.4 2.6 1.6 1.3 1.0 0.5];

% Expected function
t_func = 0:.5:70;
c_func = 4.84*exp(-.034.*t_func);

% Plot
plot(t_exp,c_exp,'rdiamond',t_func,c_func,'g--')
xlabel('Time(mins)') 
ylabel('Concentration(ppm)')
legend('Experimental Data','Expected Data')
title('Photodegradation of Aqueous Bromide')