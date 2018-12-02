%Fs=100; % use higher sampling rate
%t=-10:1/Fs:10;

%d=(abs(t)-1)==0; % use kronecker delta function for discrete-time simulation

n = linspace(-2*pi,2*pi,50);
x1= heaviside(n)- heaviside(n-3);
x2= n.*x1;
new=conv(x1,x2,'same');

% plots to visualize the results
figure;
subplot(311);
stem(n, x1);
ylabel('x[n]');
subplot(312);
stem(n, x2);
ylabel('h[n]');
subplot(3,1,3);
stem(n, new);
xlabel('Time');
ylabel('convolution');