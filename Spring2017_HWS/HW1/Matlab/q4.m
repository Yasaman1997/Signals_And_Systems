
%a
figure(1)
X = linspace(-5,5)';
Y = cos(pi*((X.^2)/3));
stem(X,Y)

hold

%b
figure(2)
X = linspace(-5,5)';
Y = sin(X)+sin(2*X)+sin(3*X);
stem(X,Y)

hold


%c
figure(3)
X = linspace(-5,5)';
Y = 3*(exp(-2*X).*heaviside(X));
stem(X,Y)


hold