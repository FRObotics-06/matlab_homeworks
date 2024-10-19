% Author Name: Keira Seidman
% Email: seidma59@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 4
% Date: 10/18/24

% creating vectors for distance and size
planet_distance = [0.39 0.723 1 1.524 5.203 9.539 19.18 30.06];
planet_size = [0.38 0.95 1 0.53 11.2 9.45 4 3.88];

% making that into a scatter plot
subplot(2,1,1)
colors = rand(length(planet_distance), 3);
scatter(planet_distance, planet_size, planet_size*50 , colors, 'filled');

% adding lables
xlabel('Planet Distance');
ylabel('Planet Size');
title('Solar System');

% turning into a bar chart
subplot(2,1,2)
bar(planet_distance);

% add labels
xlabel('Planets')
ylabel('Distance')
title('Planet Distances')

% save as image
saveas(gcf,'solar_system_visualization.png')