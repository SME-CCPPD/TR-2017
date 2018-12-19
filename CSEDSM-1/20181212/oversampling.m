[Y, FS] = audioread ("../audio/webern-op1-theme.wav");
Y=Y';
step=1/FS;%passo di campionamento
dur= length(Y)/FS;%durata del segnale 
t=[0:step:(dur)-step];%tempo
FS2=2*FS;
step2=1/FS2;
t2=[0:step2:dur-step2];
OUT=zeros(1,2*length(Y));%ARRAY VUOTO, CON NUMERO DI COLONNE = CAMPIONI DEL SEGNALE * 2
OUT(1,1)=Y(1,1);
idx = 2; 
for(k=2:length(Y))
    medium = (Y(1,k)-Y(1,k-1))/2+Y(1,k-1); 
    
    OUT(1,idx) = medium;
    idx+=1;
    OUT(1,idx) = Y(1,k);
    idx+=1;
end


plot(t2, OUT);
audiowrite ("output1.wav", OUT, FS2);
