%
FONTSIZE=20;
DATAL=load('left-data.dat');
DATAR=load('right-data.dat');

DATAL = DATAL.DATA;
DATAR = DATAR.DATA;

TEMPO=[0 , 10, 20, 30, 40, 50, 60, 75,105,120,150];

figure(1)
plot(TEMPO,DATAL.MEAN_F,'-o',TEMPO,DATAR.MEAN_F,'-*')
title('<Fujii_T> in time')
xlabel('Time in min')
ylabel('<Fujii_T>')
legend('HIGH','LOW');
print(figure(1),'fujii-all.eps','-depsc',['-F:',int2str(FONTSIZE)]);

figure(2)
plot(TEMPO,DATAL.MEAN_FX,'-o',TEMPO,DATAR.MEAN_FX,'-*')
title('<Fujii_X> in time: [0 - 0.333]Fs/2')
xlabel('Time in min')
ylabel('<Fujii_X>')
legend('HIGH','LOW');
print(figure(2),'fujii-bandx.eps','-depsc',['-F:',int2str(FONTSIZE)]);

figure(3)
plot(TEMPO,DATAL.MEAN_FY,'-o',TEMPO,DATAR.MEAN_FY,'-*')
title('<Fujii_Y> in time: [0.333 - 0.666]Fs/2')
xlabel('Time in min')
ylabel('<Fujii_Y>')
legend('HIGH','LOW');
print(figure(3),'fujii-bandy.eps','-depsc',['-F:',int2str(FONTSIZE)]);

figure(4)
plot(TEMPO,DATAL.MEAN_FZ,'-o',TEMPO,DATAR.MEAN_FZ,'-*')
title('<Fujii_Z> in time: [0.666 - 1.000]Fs/2')
xlabel('Time in min')
ylabel('<Fujii_Z>')
legend('HIGH','LOW');
print(figure(4),'fujii-bandz.eps','-depsc',['-F:',int2str(FONTSIZE)]);
