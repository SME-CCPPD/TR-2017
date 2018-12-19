[Y, FS] = audioread ("../audio/webern-op1-theme.wav");
Y=Y';
NB = [2:16];
step=1/FS;%passo di campionamento
dur= length(Y)/FS;%durata del segnale 
t2=[0:step:(dur*length(NB))-step];%tempo


OUT=zeros(1,(length(NB))*length(Y));%ARRAY VUOTO, CON NUMERO DI COLONNE = CAMPIONI DEL SEGNALE * LE VARIE FREQUENZE DI CAMP.

for(j=1:length(NB))%for per ogni fc, riempio il vettore temp
     nstep=2^(NB(j)-1);%ricavo il passo
     temp = round((Y+1)*nstep);
     temp = (temp/nstep)-1;   
     inizio=(j-1)*length(Y)+1;%variabile per definire il punto di inizio in cui scrivere dentro OUT
     fine=inizio+length(Y)-1;%variabile per definire il punto in cui smettere di scrivere dentro OUT
     OUT(1,inizio:fine)=temp;%ad ogni ciclo riempio l'array col segnale campionato
end


plot(t2, OUT);
audiowrite ("output.wav", OUT, FS);
