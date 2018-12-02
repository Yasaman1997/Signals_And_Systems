m = @(t) cos(2*pi*9*t) .* ((t > 0 ) & (t < 3));
t = linspace(-1, 4, 500);
Out = m(t);
figure(1)
plot(t, Out)
grid
