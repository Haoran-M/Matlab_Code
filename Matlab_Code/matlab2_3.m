% Define two matrices A and B
A = [1, 1; 0, 1];
B = [0, 1; 1, 0];

% Compute ABv and BAv for all vectors
ABv = A * B * vectors;
BAv = B * A * vectors;

% Plot ABv and BAv
figure
subplot(1,2,1)
hold on
colors = jet(n);
for i = 1:n
    quiver(0, 0, ABv(1,i), ABv(2,i), 0, 'Color', colors(i,:), 'LineWidth', 1.5)
end
xlim([-3, 3])
ylim([-3, 3])
axis equal
title('ABv')

subplot(1,2,2)
hold on
for i = 1:n
    quiver(0, 0, BAv(1,i), BAv(2,i), 0, 'Color', colors(i,:), 'LineWidth', 1.5)
end
xlim([-3, 3])
ylim([-3, 3])
axis equal
title('BAv')


% Define two matrices C and D
C = [1, 0.5; 0.5, 1];
D = [-1, 0; 0, 1];

% Compute CDv and DCv for all vectors
CDv = C * D * vectors;
DCv = D * C * vectors;

% Plot CDv and DCv
figure
subplot(1,2,1)
hold on
colors = jet(n);
for i = 1:n
    quiver(0, 0, CDv(1,i), CDv(2,i), 0, 'Color', colors(i,:), 'LineWidth', 1.5)
end
xlim([-3, 3])
ylim([-3, 3])
axis equal
title('CDv')

subplot(1,2,2)
hold on
for i = 1:n
    quiver(0, 0, DCv(1,i), DCv(2,i), 0, 'Color', colors(i,:), 'LineWidth', 1.5)
end
xlim([-3, 3])
ylim([-3, 3])
axis equal
title('DCv')