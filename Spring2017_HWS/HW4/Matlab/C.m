

%a
syms w
w=-0.5:0.001:0.5;
X=exp(-w);

a=ifft(X);

plot(a)



%b
syms w1
syms w2

w1=0:0.0001:100;
w2=-100:0.0001:0;



a=ifft(w1);



b=ifft(w2);

figure
plot(a)
figure
plot(b)
