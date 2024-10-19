% Author Name: Keira Seidman
% Email: seidma59@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 1
% Date: 10/17/24

%creating population vector
population = [5000, 5200, 5350, 5600, 5800];

%Growth rate calculation
growth_rate = (population(2:end)-population(1:end-1)) ./ population(1:end-1); 

%combining the calculated growth rate and the population rate into one matix
pop_data = [population; [0 growth_rate]];

%Print the information in a table using a for loop
for i=1:length(population)
    fprintf("For year %d Population was %d and the Growth rate was %f \n", i, pop_data(1, i), pop_data(2, i))
end
