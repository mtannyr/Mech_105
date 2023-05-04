% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;
format long
% Define the function to be solved for. Is the angle specified in radians or degrees?

% THINK, what makes range sense for angle?
deg = 0:90;
force = mu*m*g./(cosd(deg)+mu.*sind(deg));
% Plot your function. Does plotting give you an idea about where the root is?
plot(deg,force)
% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);
func = @(x)mu*m*g./(cosd(x)+mu.*sind(x))-150;
[root, fx, ea, iter] = bisect(func, 65, 70);
angle=root;
% These variables will be checked for your final answer:
% angle =  % the angle in degree that solves this problem
% fx =     % the function value at your solved angle
% ea =     % the bisection error estimate
% iter =   % the number of bisection iterations

fprintf('The angle is %.2f degrees\n',angle)
fprintf('The value at that angle is %.2e\n',fx)
fprintf('The error is %.2e percent\n' ,ea)
fprintf('It took %.f iterations',iter)