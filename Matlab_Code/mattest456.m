% Define the number of vectors
num_vectors = 12;

% Generate the unit vectors
angle_increment = 2*pi / num_vectors;
theta = 0;
vectors = zeros(2, num_vectors);
for i = 1:num_vectors
    vectors(:,i) = [cos(theta); sin(theta)];
    theta = theta + angle_increment;
end

% Define rotation matrices
alpha = pi/4; % rotation angle for A
beta = pi/3; % rotation angle for B
A = [cos(alpha) -sin(alpha); sin(alpha) cos(alpha)];
B = [cos(beta) -sin(beta); sin(beta) cos(beta)];

% Compute ABv and BAv
ABvectors = A * B * vectors;
BAvectors = B * A * vectors;

% Define colors for each vector
colors = jet(num_vectors);

% Plot the transformed vectors
figure;
subplot(2,1,1);
hold on;
for i = 1:num_vectors
    quiver(0, 0, ABvectors(1,i), ABvectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('ABv');

subplot(2,1,2);
hold on;
for i = 1:num_vectors
    quiver(0, 0, BAvectors(1,i), BAvectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('BAv');
