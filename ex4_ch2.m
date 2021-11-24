clear; clc; close all;

%%  Data Analysis
%   2nd assignement 02-11-21 ex 4

a = 1; b = 2;% a and b denote the start and the end respectively of the distribution's interval
n = 10.^(0:8)';
repetitions = length(n);
meanValues = zeros(6, repetitions); % odd rows: E[1 / X], even rows: 1 / E[X]

for j = 0 : 2
        for i = 1:repetitions
            X = a + (b - a).*rand(n(i), 1);
            meanValues(2 * j + 1, i) = mean(1 ./ X);
            meanValues(2 * j + 2, i) = 1 / mean(X);
        end

        figure(j + 1)
        plot(log2(n), meanValues(2 * j + 1, :),'-c')
        hold on
        plot(log2(n), meanValues(2 * j + 2, :),'-r')
        legend('E[1/x]','1/E[x]')
        xlabel('#samples increase exponentialy')
        ylabel('Calculated mean')
        title(['X ~ U in [', int2str(a), ', ', int2str(b), ']'])
        hold off
       
        a = a - 1;
        if ( b == 2)
                b = b - 1;
        end       
end
