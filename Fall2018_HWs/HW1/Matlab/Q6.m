
%a  ==> e^j*wo*n
figure(1)
n = linspace(-25,25)';
w=2/3;
Y = exp(1i*w*n);
stem(n,Y)
grid

hold




figure(2)
n = linspace(-25,25)';
w=2*pi/3;
Y = exp(1i*w*n);
stem(n,Y)
grid

hold



figure(3)
n = linspace(-25,25)';
w=5*pi/3;
Y = exp(1i*w*n);
stem(n,Y)
grid

hold
%b  ==> e^(j*w*t)

figure(4)

t = linspace(-25, 25, 100);
w=2/3;
m = exp(1i*w*t);



plot(t, m)
grid


hold





figure(5)

t = linspace(-25, 25, 1000);
w=2*pi/3;
m =exp(1i*w*t);


plot(t, m)
grid


hold



figure(6)

t = linspace(-25, 25, 1000);
w=5*pi/3;
m =exp(1i*w*t);


plot(t, m)
grid


hold