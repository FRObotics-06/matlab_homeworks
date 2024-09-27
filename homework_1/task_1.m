% Author Name: Keira Seidman
% Email: seidma59@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: 9/27/24

%a) Create a variable `radius` and assign it a value of 5.
%b) Calculate the area of a circle with this radius and store it in a variable called `area`.
%c) Calculate the circumference of the circle and store it in a variable called `circumference`.
%d) Display the results with appropriate labels.

%Creating the radius variable
radius = 5;

%Creating the area variable
area = radius ^ 2 * 3.14;

%Creating the circumference variable
circumference = radius * 2 * 3.14;

%Displaying results
disp (['area = ', num2str(area)])
disp (['circumference = ', num2str(circumference)])
