x1=[0 1 0 -1 0 -1 1 1 0 0];
x2=[0 0 -1 1 0 1 0 0 0 0 ];
 
yn=conv(x1,x2);
n=[-6:1:13];
figure(1);
stem(n,yn);
grid on;
xlabel('time');
ylabel('Convolution');
title('Convolution');

