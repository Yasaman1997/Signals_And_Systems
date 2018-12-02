clc

close all
syms t
pi(t)=1;
t=-0.5:0.0001:0.5;
a=fft(pi (t));
R=abs(a);
Theta=angle(a);
plot(t,R,t,Theta,'r','b')

%Q1
clc
close all

syms t
x(t)=(sin(t)/t);
t=-0.5:0.0001:0.5;
a=fft (x);
%Q2_1

clc

close all
syms t
t=-0.5:0.001:0.5;
x (t)=(1+(exp^(-t*t)));
a=fft(x);
%Q2_2
clc
close all

syms w
X(w)=exp^(-w);
w=-0.5:0.001:0.5;
a=ifft(X);
%Q3_1
clc
close all

syms w
X1(w1)=w1;
w1=0:0.0001:100;
a=ifft(X1);
X2(w2)=w2;
w2=-100:0.0001:0;
b=ifft(w2);
plot (a,w1,b,w2,'r','b')
%Q3_2