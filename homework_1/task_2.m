% Author Name: Keira Seidman
% Email: seidma59@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: 9/27/24

%a) Prompts the user to enter a temperature in Celsius.
%b) Converts the temperature to Fahrenheit using the formula: F = (C * 9/5) + 32
%c) Displays the result with appropriate formatting.
%d) If the temperature in Fahrenheit is above 100°F, display a message saying "It's a hot day!"

%Asking for input for temperature in celsius
temperatureCelsius = input('input temperature in Celsius = ');

%Convert temperature input into degrees fahrenheit
temperatureFahrenheit = (temperatureCelsius*9/5)+32;

%Displaying calculated temperature in fahrenheit
disp (['the temperature in degrees Fahrenheit = ', num2str(temperatureFahrenheit)])

if temperatureFahrenheit > 100
    disp('It is a hot day')
end