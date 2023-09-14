num_vectors = 12;
angle_increment = 2*pi / num_vectors;
theta = 0;
vectors = zeros(2, num_vectors);
for i = 1:num_vectors
    vectors(:,i) = [cos(theta); sin(theta)];
    theta = theta + angle_increment;
end
theta = pi/4;
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];%rotation
Rx = [1 0; 0 -1]; % reflect across x-axis
Ry = [-1 0; 0 1]; % reflect across y-axis
S = [2 0; 0 3]; % stretch by factor of 2 in x-direction and 3 in y-direction
rotated_vectors = R * vectors;
reflected_x_vectors = Rx * vectors;
reflected_y_vectors = Ry * vectors;
scaled_vectors = S * vectors;
colors = jet(num_vectors);
figure;
subplot(2,2,1);
hold on;
for i = 1:num_vectors
    quiver(0, 0, vectors(1,i), vectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('Original Vectors');
subplot(2,2,2);
hold on;
for i = 1:num_vectors
    quiver(0, 0, rotated_vectors(1,i), rotated_vectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('Rotated Vectors');
subplot(2,2,3);
hold on;
for i = 1:num_vectors
    quiver(0, 0, reflected_x_vectors(1,i), reflected_x_vectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('Reflected Vectors (x-axis)');
subplot(2,2,4);
hold on;
for i = 1:num_vectors
    quiver(0, 0, reflected_y_vectors(1,i), reflected_y_vectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('Reflected Vectors (y-axis)');
figure;
hold on;
for i = 1:num_vectors
    quiver(0, 0, scaled_vectors(1,i), scaled_vectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('Scaled Vectors');
A = [1 0; 0 -1];
B = [-1 0; 0 1];
ABvectors = A * B * vectors;
BAvectors = B * A * vectors;
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
A2 = [cos(theta) -sin(theta); sin(theta) cos(theta)];
B2 = [-1 0; 0 1];
AB2vectors = A2 * B2 * vectors;
BA2vectors = B2 * A2 * vectors;
figure;
subplot(2,1,1);
hold on;
for i = 1:num_vectors
    quiver(0, 0, AB2vectors(1,i), AB2vectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('ABv2');
subplot(2,1,2);
hold on;
for i = 1:num_vectors
    quiver(0, 0, BA2vectors(1,i), BA2vectors(2,i), 'LineWidth', 2, 'Color', colors(i,:));
end
axis equal;
title('BAv2');
