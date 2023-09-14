theta = 0:0.1:2*pi; % range of angles from 0 to 2*pi in steps of 0.1
x = cos(theta); % x-coordinate of point on unit circle at each angle
y = sin(theta); % y-coordinate of point on unit circle at each angle
plot(x,y) % plot the circle
axis equal % set the aspect ratio to 1:1
