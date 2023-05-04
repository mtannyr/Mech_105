function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m);

% Now the real challenge is to fill in the correct values of A
RowOne = [1:1:m];
ColOne = [1:1:n]';

A = A + RowOne;
A = A + (ColOne-1);

if nargin ~= 2
    error('Requires 2 inputs: n and m')
else
    for y = 2:m
        for x = 2:n
            top = x-1;
            ColOne = y-1;
            A(x,y) = A(top,y)+A(x,ColOne);
        end
    end
end

end