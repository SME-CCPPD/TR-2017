fc=1000;
sinc=1/fc;
dur=0.1;
t=[0:sinc: dur-sinc];
f=12;
sig1=cos(2*pi*f*t);
sig2=sig1;

figure(1)
plot(t, sig2,t,sig2+sig1)
figure(2)
sig3=cos(2*pi*f*t+pi/7);
plot(t, sig1, t,sig3, t,sig1+sig3)
figure(3)
sig4=cos(2*pi*(f*1.593)*t);
plot(t, sig1, t,sig4, t,sig1+sig4)
