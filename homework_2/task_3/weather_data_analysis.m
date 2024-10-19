% Author Name: Keira Seidman
% Email: seidma59@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 3
% Date: 10/18/24

% Read the data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Take out the  numerical data (skipping header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

% calculate averages of temp and humidity
average_t = mean(temperature);
average_h = mean(humidity);

% calculate total percipitation
total_p = sum(precipitation);

% save new data to file
data = [average_t, average_h, total_p];
file_name = 'weather_summary.txt';
save_to_file(file_name, data);