
clc;
clear all;
x=input("Enter a sequence: ");
N=length(x);
t=0:N-1;
x1=fft(x);
subplot(3,2,1);
stem(t,x);
title("Time Domain Input sequence");

subplot(3,2,2);
stem(t,real(x1));
title("Frequency Domain Input Signal");

subplot(3,2,3);
plot(t,angle(x1));
title("Phase Plot");

y=ifft(x1);
subplot(3,2,4);
stem(t,real(y));
title("Inverse DFT Of Input Sequence "); 


