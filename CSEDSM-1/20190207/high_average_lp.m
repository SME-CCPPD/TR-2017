n=10;
w=[0:0.01:2*pi];

H=zeros(1, length(w));
for m=0:n
H.+=(1/(n+1))*(e.^(-i*n*w));
end

plot(w, (H))
