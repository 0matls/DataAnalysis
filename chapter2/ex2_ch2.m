clear; clc; close all;

%%  Data Analysis
%   1st assignment 19-10-21 ex 2

lambda = 1;
samples = 1000;

x = rand(samples,1); %uniform distribution
y = -log(1 -x) / lambda; %inverse pdf of exponential distribution
Hdata = histogram(y, 100); %histogram with 100 bins
width = Hdata.BinEdges(2)- Hdata.BinEdges(1); %width of bin
simulatedPDF = Hdata.Values/samples/width; %pdf based on the #samples
yPDF = @(x) lambda*exp(-lambda*x); %analytical pdf of the exponential distribution

figure(2)
hold on
plot(Hdata.BinEdges(1:length(Hdata.BinEdges)-1),simulatedPDF,'-b')
fplot(yPDF,[Hdata.BinEdges(1) Hdata.BinEdges(end)+width/2],'r')
legend('simulation','analytical')
xlabel('x')
ylabel('F_X(x) (PDF)')
title(['Exponential distribution given ', int2str(samples), ' samples'])
hold off
