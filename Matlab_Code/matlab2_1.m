% Generate 11 unit vectors pointing to equally spaced angles
n = 11;
angles = linspace(0, 2*pi, n+1); % angles in radians
angles = angles(1:end-1); % remove last element (which is equal to the first)
vectors = [cos(angles); sin(angles)];

% Plot the vectors
figure
hold on
colors = jet(n);
for i = 1:n
    quiver(0, 0, vectors(1,i), vectors(2,i), 0, 'Color', colors(i,:))
end
xlim([-1.2, 1.2])
ylim([-1.2, 1.2])
axis equal



