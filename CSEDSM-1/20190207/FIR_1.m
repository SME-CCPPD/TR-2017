fc=1;
ny=fc/2;
step=0.01;
f=[-fc:step:fc-step];
t=f;
w=f*2*pi;
cutoff=ny/3;
rf=zeros(1, length(f));
rf(round(length(f)*(5/12)):round(length(f)*(7/12)))=1;
figure(1)
plot(f, rf)
axis([-1 1 -0.1 1.1])
print("ideal_filter_frequency_response.jpg", "-djpeg")

ir=fftshift(ifft(rf));
irmax=max(ir);
ir=ir/irmax;

figure(2)
stem(t, ir)
axis([-1 1 -1.1 1.1])
print("ideal_filter_impulse_response.jpg", "-djpeg")

figure(3)
rffft=fft(ir);

rffftmag=abs(rffft);
rffftmagmax=max(rffftmag);
rffftmag=rffftmag/rffftmagmax;

plot(f, rf, f, rffftmag)
where=1/6;

axis([where-3*step where+3*step 0.9 1.1])
print("ideal_filter_frequency_response_closeup.jpg", "-djpeg")
