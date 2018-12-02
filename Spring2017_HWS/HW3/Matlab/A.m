clc

close all
syms t
T=1.5 ;
j=sqrt(-1);


f=0;

for i=-3:1.5:3
    f = f+ triangularPulse((i-.5),i,i+.5,t);
end
fplot(f,[-4,4]);

a0=(1/1.5)*(quad(vectorize(f*cos(0*t)),-.5,.5))


    