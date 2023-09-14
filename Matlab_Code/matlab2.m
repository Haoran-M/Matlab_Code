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

% Plot the vectors
figure;
hold on;
for i = 1:num_vectors
    quiver(0, 0, vectors(1,i), vectors(2,i), 'LineWidth', 2);
end
axis equal;
title('12 Unit Vectors Spaced Equally Apart');
xlabel('x');
ylabel('y');
