function [root, fx, ea, iter] = false_position(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
if nargin<3
    error('Atleast 3 inputs needed: Function, lower guess, upper guess')
elseif nargin<4
    es=.0001;
    maxit=200;
elseif nargin<5
    maxit=200;
end

iter = 0;
ea = 100;
xrO = 100;
while ea>es && iter<maxit
    iter = iter+1;
    fxl=func(xl);
    fxu=func(xu);
    root = xu-(fxu*(xl-xu)/(fxl-fxu));
    fx=func(root);
    if fx~=0
        ea=(xrO-root)/root*100;
        if fx<0
        xl=root;
        elseif fx>0
        xu=root;
        end
    else
            ea=0;
    end
    xrO=root;
    
end
end
