dur=1;
fc=100;
step=1/fc;
t=[0:step:dur-step];  %asse dei tempi
f=60;
w=f*2*pi;
y=cos(w*t);
plot(t,y,"*") 
axis([0 0.1 -1.1 1.1])   %vedo solo il primo decimo di secondo

