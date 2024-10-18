% Author Name: Keira Seidman
% Email: seidma59@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 2
% Date: 10/17/24


% creating the function
function encrypt = caesar_cipher(message,shift)
% turning the message into numbers for the computer to read
a = double(message);
% making the shift only for 0-25
shift = mod(shift, 26);
% making the shift in the message by adding the shift
a_m = a + shift;
% creating a loop with if statements if the letter in string is to high
for i = 1:length(a_m)
    if a_m(i)>122
        a_m(i) = a_m(i)-26;
    end
    if a_m(i)<97
        a_m(i) = a_m(i)+26;
    end
end
%print original message
fprintf('Original message: %s \n', message)
% print the new encripted message
fprintf('Encrypted message: %s', char(a_m))
encrypt = char(a_m);
end