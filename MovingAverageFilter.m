clc;
clear all;
close all;
R=50;
d=rand(R,1)-0.5;
m=0:1:R-1;
s=2*m.*(0.9.^m);
x=s+d';

M=input("Number of input samples: ");
b=ones(1,M)/M;
y=filter(b,1,x);
figure(1);
plot(m,d,"r-",m,s,"b--",m,x,"g:")
xlabel("Time index n");
ylabel("Amplitude");
legend("d[n]","s[n]","x[n]");
figure(2);
plot(m,s,"r-",m,y,"b--");
legend("s[n]","y[n]");
xlabel("Time Index n");
ylabel("Amplitude");