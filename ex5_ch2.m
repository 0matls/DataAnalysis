clear; clc; close all;

%%  Data Analysis
%   2nd assignement 02-11-21 ex 5

meanValue = 4;
sigma = sqrt(0.01);
limit = 3.9;
probability = normcdf(limit,meanValue,sigma);
newLimit = norminv(0.01,meanValue,sigma);
fprintf('The new limit should be: %3.3f', newLimit);
