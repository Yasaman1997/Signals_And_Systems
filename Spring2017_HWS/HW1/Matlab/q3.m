
%a
t = linspace(-5, 5, 500);
m = @(t)(sin(pi.*t)/pi.*t) .* ((t > -5 ) & (t < 5));

Out = m(t);
figure(1)
plot(t, Out)
grid


hold

%b
t = linspace(-5, 5, 500);
Y = @(t) (sin(t)+sin(2*t)+sin(3*t));

Out = Y(t);
figure(2)
plot(t, Out)
grid

hold

%c
t = linspace(-5, 5, 500);
m= @(t) (3*(exp(-2*t).*heaviside(t)));

Out = m(t);
figure(3)
plot(t, Out)
grid

hold