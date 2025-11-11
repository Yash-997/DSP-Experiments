close all;
clc;
alphap=0.01;
alphas=44;
ws=30;
wp=20;
wfs=100;
b=ws-wp;
wc=0.5*(ws+wp);
wcr=wc*2*pi/wfs;
d=(alphas-7.95)/14.36;
N=ceil((wfs*d/b)+1)
alpha=(N-1)/2;
gamma=((0.5842*(alphas-21).^(0.4)+0.07886*(alphas-21)));
n=0:1:N-1;
a1=sin(wcr*(n-alpha));
a2=(pi*(n-alpha));
hd=a1./a2;
hd(alpha+1)=0.5;
wk=kaiser(N,gamma)';
hn=hd.*wk;
w=0:1:pi;
h=freqz(hn,1,w);
plot(w/pi,20*log10(h))
xlabel("Normalized frequency\omega/\pi");
ylabel("magnitude in dB");
