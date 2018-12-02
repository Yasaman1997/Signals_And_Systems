%a

t = linspace(-5, 5, 1000);
w=0;
m = @(t)(cos(w/2.*t)).^2;

Out = m(t);
figure(1)
plot(t, Out)
grid

hold


t = linspace(-5, 5, 1000);
w=pi/2;
m = @(t)(cos(w/2.*t)).^2;

Out = m(t);
figure(2)
plot(t, Out)
grid


hold


t = linspace(-5, 5, 500);
w=3.*pi/4;
m = @(t)(cos(w/2.*t)).^2;

Out = m(t);
figure(3)
plot(t, Out)
grid


hold


t = linspace(-5, 5, 500);
w=pi;
m = @(t)(cos(w/2.*t)).^2;

Out = m(t);
figure(4)
plot(t, Out)
grid


hold

t = linspace(-5, 5, 500);
w=51/pi;
m = @(t)(cos(w/2.*t)).^2;

Out = m(t);
figure(5)
plot(t, Out)
grid


%b

figure(6)
n = linspace(-5,5)';
w=0;
Y = cos(w.*n);
stem(n,Y)

hold


figure(7)
n = linspace(-5,5)';
w=pi/2;
Y = cos(w.*n);
stem(n,Y)

hold



figure(8)
n = linspace(-5,5)';
w=(3*pi)/4;
Y = cos(w.*n);
stem(n,Y)

hold



figure(9)
n = linspace(-5,5)';
w=pi;
Y = cos(w.*n);
stem(n,Y)

hold


figure(10)
n = linspace(-5,5)';
w=51/pi;
Y = cos(w.*n);
stem(n,Y)

hold


