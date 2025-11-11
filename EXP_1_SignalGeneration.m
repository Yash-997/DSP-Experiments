clc;

%Sine wave
t=0:0.1:pi;
y=sin(2*pi*t);
subplot(3,2,1);
plot(t,y);

%Cosine wave
t=0:0.1:pi;
y1=cos(2*pi*t);
subplot(3,2,2);
plot(t,y1);

%Ramp signal
n1=input('Enter the length of the ramp signal: ');
t=1:n1;
subplot(3,2,3);
plot(t,t);

%Exponential signal
n2=input('Enter value for exponential signal: ');
t=0:0.1:n2;
y3=exp(t);
subplot(3,2,4);
plot(t,y3);

%Unit sequence
n3=input('Enter the length of the unit sequence: ');
t=0:1:n3-1;
y4=ones(1,n3);
subplot(3,2,5);
stem(t,y4);
