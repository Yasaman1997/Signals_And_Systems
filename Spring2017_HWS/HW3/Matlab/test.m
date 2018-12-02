clc

close all
syms t
T=1.5;j=sqrt(-1);
f=0;

    for i=-3:1.5:3
  
  f= f+ triangularPulse((i-.5), i, i+.5, t);
    end
fplot(f, [-4 4])
a_0=(1/1.5)*(quad(vectorize(f*cos(0*t)),-.5,.5))

for n=-20:20
    a_n(n+21)=(1/1.5)*(quad(vectorize(f*exp((-j*n*4*pi*t)/3)),-.5,.5));
   
end
 x1=0;
for k=-2:2
   x1=x1+ a_n(k+21)*exp((j*k*4*pi*t)/3);
end
figure
fplot(x1, [-2.5 2.5])
 x2=0;
for k=-10:10
   x2=x2+ a_n(k+21)*exp((j*k*4*pi*t)/3);
end
figure
fplot(x2, [-2.5 2.5])
  x3=0;
for k=-20:20
   x3=x3+ a_n(k+21)*exp((j*k*4*pi*t)/3);
end
 figure
fplot(x3, [-2.5 2.5])
 
 