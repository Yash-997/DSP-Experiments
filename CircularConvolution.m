close all;
clc;
x=input("Enter 4 samples: ");
y=input("Enter 4 samples: ");
x1=fft(x);
y1=fft(y);
for i=1:4
    z1(i)=y1(i)*x1(i);
end
disp(x1);
disp(y1);
z=ifft(z1);
disp(z)
convolution=cconv(x,y,4);
disp(convolution)