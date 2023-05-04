clear
clc
% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything
% h = input('');
h = 20;
dia_cyl = 25;
rad_cyl = dia_cyl/2;
height_cyl = 19;
maxDia_cone = 46;
totHeight_cone = 92/3
height_cone = h-19+(50/3) %variable
maxRad_cone = maxDia_cone/2
rad_cone = height_cone*.75 %variable

% Specify the height of the water

% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
% 1. input h
% 2. find where h is on the tank
% 3. calc v for how far h goes up the cylindar
% v_cyl = h*pi*r^2
% 4. calc v for how far h goes up the cone
% v_cone = h/3 * pi*r^2
% 5. if h is above tank display overflow
% 6. add volumes

if h<=19
    v_cyl = h*pi*rad_cyl^2;
    v = v_cyl;
elseif h<=33
    v_cyl = 19*pi*rad_cyl^2
    partial_v_cone = (totHeight_cone-14)/3*pi*rad_cyl^2
    tot_v_cone = height_cone/3*pi*rad_cone^2
    v = v_cyl + tot_v_cone - partial_v_cone

    disp('Overflow!');
end

fprintf('The Volume is %3.2f m^3',v)

