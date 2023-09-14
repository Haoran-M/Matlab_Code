% Define the rotation matrix
theta = pi/4; % choose your own value of theta
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];

% Define the reflection matrices
Rx = [1 0; 0 -1]; % reflection across the x axis
Ry = [-1 0; 0 1]; % reflection across the y axis

% Define the stretching matrix
S = [2 0; 0 3]; % stretch by a factor of 2 in the x direction and a factor of 3 in the y direction

% Apply the matrices to the vectors
rotated_vectors = R*vectors;
reflected_x_vectors = Rx*vectors;
reflected_y_vectors = Ry*vectors;
stretched_vectors = S*vectors;

% Plot the original and transformed vectors
figure
hold on
colors = jet(n);
quiver(vectors(1,:), vectors(2,:), 'Color', colors(1,:))
quiver(rotated_vectors(1,:), rotated_vectors(2,:), 'Color', colors(2,:))
quiver(reflected_x_vectors(1,:), reflected_x_vectors(2,:), 'Color', colors(3,:))
quiver(reflected_y_vectors(1,:), reflected_y_vectors(2,:), 'Color', colors(4,:))
quiver(stretched_vectors(1,:), stretched_vectors(2,:), 'Color', colors(5,:))
xlim([-3, 3])
ylim([-3, 3])
axis equal
legend('Original', 'Rotated', 'Reflected across x', 'Reflected across y', 'Stretched')
