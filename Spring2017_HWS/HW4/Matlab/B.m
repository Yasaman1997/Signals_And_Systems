
%1

syms t
              
t=-5:0.001:5;

x = sin(t);
n=x/t;


a=fft(n);
figure
plot(a)



%2
syms t
t=-0.5:0.1:0.5;

y=(1+(exp(-t.*t)));
b=fft(y);
figure
plot(b)

