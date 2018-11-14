fc=200; %frequenza di campionamento
passo=1/fc; %passo di campionamento
dur = 2; %durata tempo
start = 20; % tempo d'inizio
t = [start : passo : start+dur-passo]; %asse dei tempi
f=7; %frequenza
y =cos(f*2*pi*t); %coseno valori del tempo * (f*2*pi)
plot(t,y)