clear; clc; close all;

%%  Data Analysis
%   1st assignement 19-10-21 ex 3

meanValues = [0 0];
Sigma = [1 2;2 10]; %must be a symmetric positive semi-definite matrix
% also 2 != 0 so the variables are not independent
R = mvnrnd(meanValues,Sigma,100000);
varX = var(R(:,1));
varY = var(R(:,2));
varXplusY = varX + varY;
 
sumVars = var(R(:,1)+R(:,2));
fprintf('Var[X+Y] = %3.3f, but Var[X] + Var[Y] = %3.3f + %3.3f = %3.3f \n', sumVars,varX,...
    varY,varXplusY);
 