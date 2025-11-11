clc;
clear all;
close all;
N=input("Median Filter Length: ");
R=50;
a=rand(1,R)-0.4;
b=round(a)
m=0:R-1;
s=2*m.*(0.9.^m);
x=s+b;
y=medfilt1(x,N);
subplot(2,1,1)
stem(m,x);
axis([0 50 -1 8]);
xlabel('n');
ylabel("Amplitude");
title("Impulse Noise Corrupted Signal");
subplot(2,1,2)
stem(m,y);
xlabel("n"); ylabel("Amplitude");
title("Outout of Median Filter");