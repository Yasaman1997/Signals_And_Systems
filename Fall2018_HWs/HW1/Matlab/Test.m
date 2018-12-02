figure(1)
n = linspace(-25,25)';
w=2*pi;
Y = exp(1i*w*n);
stem(n,Y)
grid

hold

figure(2)
n = linspace(-25,25)';
w=4*pi;
Y = exp(1i*w*n);
stem(n,Y)
grid

hold

