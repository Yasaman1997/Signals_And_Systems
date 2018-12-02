

x1=[0 1 0 -1 0 -1 1 1 0 0];
x2=[0 0 0 0 0 -1 1 0 1 0 ];


t1=-4;
t2=-1;

l1=length(x1);
l2=length(x2);
ln=l1+l2-1;

yn=conv(x1,x2,'full');

a=t1+l1-1;
t=t1:a;
subplot(311);
stem(t,x1);
grid on;
xlabel('time');
ylabel('x1');


a=t2+l2-1;
t=t2:a;
subplot(312);
stem(t,x2);
grid on;
xlabel('time');
ylabel('x2');


tn=t1+t2;
a=tn+ln-1;
t=tn:a;
subplot(313)
stem(t,yn);
grid on;
xlabel('time');
ylabel('Convolution');
TITLE('Convolution');
