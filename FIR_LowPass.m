clc;
clear all;
b= [6.76195 -13.456335 6.76195];
zi=[0 0];
n=0:99;
x1=cos(0.1*n)
x2=cos(0.4*n)
subplot(2,1,1);
plot(x1+x2);
title("Signal x1+x2")
y=filter(b,1,x1+x2,zi);
subplot(2,1,2);
plot(n,y,'r',n,x2,'B',n,x1,'r-*');
grid
axis([0 100 -1.2 4]);
title("High Pass Filter")
ylabel("Amlitude");
xlabel("Time index n");
legend("y[n]","x2[]","x1[]")
