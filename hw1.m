%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Homework 01                                                      %
%                                                                    %
%   Author: Jiajing Zhang                                            %
%   Date: 04/12/2019                                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Clear Cache
clc; close all; clear all;

%% Define Switch
n= input('enter homework number \n');
% Error check for switch
if n~= 1 && n~=2
    fprintf('Error, please enter either 1 or 2\n')
    return
end

switch n
    case 1
        
%% Main Script- Calculate the surface area of an oblate spheroid

% Prompt user input for equatoria radius and polar radius
fprintf('enter the equatorial radius and polar radius \n')
r1= input ('r1: ');
r2= input ('r2: ');
% Error check for input radius
if r1<=0 || r2<=0 || imag(r1)~=0 || imag(r2)~=0 || r2>r1
    fprintf('Error, please enter a polar radius that is positive real and less than or equal to the equatorial radius\n')
    return
end
% Define variable y used in calculation
y= acos(r2/r1);
% Formula for surface area of an oblate spheriod
A= 2*pi*(r1^2+(r2^2/sin(y))*log((cos(y))/(1-sin(y))));
% Formula for the approximated surface area of an oblate spheriod
Ap= 4*pi*((r1+r2)/2)^2;
% Discrepancy
D= abs(A-Ap);
% Print results
fprintf('surface area: %1.10f km \n', A);
fprintf('approximated surface area: %1.10f km \n', Ap);
fprintf('The discrepancy between the two calculations is: %1.10f km \n', D);


    case 2

%% Main Script- Calculate the perimeter of an ellipse

% Prompt user input for semi-axes of an ellipse
fprintf('Enter the semi-axes of an ellipse \n')
a= input ('a:');
b= input ('b:');
% Error check for input value
if a<=0 || b<=0 || imag(a)~=0 || imag(b)~=0
    fprintf('Error, please enter values that are positive and real\n')
    return
end
% Define variable h
h= ((a-b)/(a+b))^2;
% Formula for the case when a is equal to b
if a==b
    r=a;
    P= 2*pi*r;
    fprintf('The perimeter of the ellipse is: %1.10f', P)
% Formula for the case when a is not equal to b
else
    P1= pi*(a+b);
    P2= pi*sqrt(2*(a^2+b^2));
    P3= pi*sqrt((2*(a^2+b^2))-((a-b)^2/2));
    P4= pi*(a+b)*(1+(h/8))^2;
    P5= pi*(a+b)*(1+((3*h)/(10+sqrt(4-(3*h)))));
    P6= pi*(a+b)*((64-(3*(h^2)))/(64-(16*h)));
    P7= pi*(a+b)*((256-(48*h)-(21*(h^2)))/(256-(112*h)+(3*(h^2))));
    P8= pi*(a+b)*((3-sqrt(1-h))/2);
% Print Results
    fprintf('The value of h is: %1.10f \n',h)
    fprintf('The value of perimeter1 is: %1.10f \n',P1)
    fprintf('The value of perimeter2 is: %1.10f \n',P2)
    fprintf('The value of perimeter3 is: %1.10f \n',P3)
    fprintf('The value of perimeter4 is: %1.10f \n',P4)
    fprintf('The value of perimeter5 is: %1.10f \n',P5)
    fprintf('The value of perimeter6 is: %1.10f \n',P6)
    fprintf('The value of perimeter7 is: %1.10f \n',P7)
    fprintf('The value of perimeter8 is: %1.10f \n',P8)
end
end