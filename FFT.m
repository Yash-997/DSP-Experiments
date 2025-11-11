clear all;
close all;
clc;
x= input('Enter the sequence: ');
n=length(x);
x1(1)=x(1);
k=n+2;
for i=2:n
    x1(i)=x(k-i);
end
y=fft(x);
disp(y);
subplot(3,1,1);
plot(abs(y));
y1=fft(x1);
disp(y1);
subplot(3,1,2);
title('FFT Magnitude PLot of Y');
xlabel('Sample Number');
ylabel('Amplitude');
plot(abs(y1));
title('FFT Magnitude plot of Y1');
xlabel('Samples number');
ylabel('Amplitude');

figure;
subplot(2,1,1);
plot(angle(y)*180/pi);
title('Phase');
xlabel("Angle in Degree");
ylabel("FFT coeff Number");
subplot(2,1,2);
plot(angle(y1)*180/pi);
title('Phase');
xlabel('Angle in Degree');
ylabel('FFT coeff Number');