clear; clc; close all;

%%  Data Analysis
%   2nd assignement 02-11-21 ex 6

variables = 100;
n = 10000;

Y = mean(rand(variables,n));
histfit(Y,200); % bins = 200
xlabel('mean')
ylabel('frequency')
title(sprintf('This loos like a normal distribution, indeed!'))