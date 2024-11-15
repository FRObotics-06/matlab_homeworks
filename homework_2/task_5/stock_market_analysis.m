% Author Name: Keira Seidman
% Email: seidma59@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 5
% Date: 10/18/24

% read data from file
data = load('stock_data.txt');

% calculate average closing price
average = mean(data);
fprintf('Average: %g \n',average)
% find highest closing price
high = max(data);
fprintf('Highest: %g \n',high)
% find lowest closing price
low = min(data);
fprintf('Lowest: %g \n',low)
% calculate number of days price increased
increased = sum(diff(data)>0);
fprintf('Number of days increased: %g \n',increased)

% make line plot
x = 1:length(data);
plot(x,data,'b:');
hold on;
plot(x, repmat(average, size(x)), 'r-');
plot(x, repmat(high, size(x)), 'g--');
plot(x, repmat(low, size(x)), 'm--');

% add the labels
xlabel('Day');
ylabel('Closing Price');
title('Stock Market Analysis');
legend('Closing Prices', 'Average', 'Highest', 'Lowest');

% save the plot as image
saveas(gcf,'stock_analysis.png')

% write a summary in new file
data = [average, high, low, increased];
file_name = 'stock_market_analysis.txt';
save_to_file(file_name, data);