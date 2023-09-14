% Step 1: Define the 4x4 matrix M
M = [0.96 0.03 0 0;
     0.04 0.8 0 0;
     0 0.15 1 0;
     0 0.02 0 1];

% Step 2: Define the 4x1 vector x0
x0 = [0.85; 0.1; 0.04; 0.01];

% Step 3: Initialize a matrix to store data for each day
days = 500;
A = zeros(4, days);

% Step 4: Use for loop to compute and store all data
for i = 1:days
    x2 = M * x0;
    A(:, i) = x2;
    x0 = x2;
end

% Step 5: Plot the data
plot(1:days, A(1,:), 'LineWidth', 2);
hold on;
plot(1:days, A(2,:), 'LineWidth', 2);
plot(1:days, A(3,:), 'LineWidth', 2);
plot(1:days, A(4,:), 'LineWidth', 2);

% Step 6: Label the plot
legend('Susceptible', 'Infected', 'Recovered', 'Deceased');
xlabel('Days');
ylabel('Population');
title('SEIR Model for Disease Progression');
