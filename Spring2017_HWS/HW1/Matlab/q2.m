
 n=-5:1:5;
 x=(2.^-n).*sin((n*pi)/10); %define discrete-time function. This is x[n].
 
 sum(x.^2)
 
 
figure(1)

stem(n,x.^2)
