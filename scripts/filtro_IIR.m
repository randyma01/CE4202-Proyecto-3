clc
clear
pkg load signal
% sf = Frecuencia de muestreo
sf = 80e3; 
sf2 = sf/2;
fc_1 = 40;
fc_2 = 4e3;
data = [[1 ; zeros(sf - 1,1)], sinetone(fc_1,sf,1,1) + sinetone(fc_2,sf,1,1)];
% F recuencia de corte = Frec. corte real / sf2
[b_1 ,a_1]= butter(1,fc_1/sf2)
filtered_1 = filter(b_1,a_1,data);
[b_2,a_2]= butter(1,fc_2 /sf2,"high")
filtered_2 = filter(b_2, a_2 ,data);
data = [ sinetone( fc_1,sf ,1 ,1 ) + sinetone( fc_2 ,sf ,1 ,1)] * 2.5 / 2;
clf
subplot(4 , 1 , 1 )
plot(data,"; Entrada ; " )
axis([ 0 fc_1 * 200])
subplot(4 , 1 , 2 )
plot( filtered_1(: ,2 ), "; Filtro pasa bajas ;" )
axis([ 0 fc_1 * 200])
subplot(4 , 1, 3 )
plot( filtered_2(: ,2) , "; Filtro pasa altas ;" )
axis([0 fc_1*200])
subplot (4 , 1 , 4 )
plot( filtered_2(: ,2 ) , "; Filtro pasa altas;" )
axis([ 0 fc_1*5])