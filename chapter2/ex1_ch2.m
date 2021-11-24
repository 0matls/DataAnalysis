clear; clc; close all;

%%  Data Analysis
%   1st assignment 19-10-21 ex 1

tosses = 10.^(0:8)';
iterations = length(tosses);
percentage = zeros(1,iterations);
 for i = 1:iterations
    x = rand(tosses(i),1);
    a = x > 0.5;
    percentage(i) = (sum(a(:) == 1)/tosses(i));
 end
semilogx(tosses, percentage)
xlabel('coin tosses')
ylabel('percentage')
title('simulation of coin tossing probability')
