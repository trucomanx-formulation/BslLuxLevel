%
FONTSIZE=20;
DATAL=load('left-data.dat');
DATAR=load('right-data.dat');

DATAL = DATAL.DATA;
DATAR = DATAR.DATA;

TEMPO=[0 , 10, 20, 30, 40, 50, 60, 75,105,120,150];

figure(1)
plot(TEMPO,DATAL.MEAN_D,'-o',TEMPO,DATAR.MEAN_D,'-*')
title('<\sigma_T> in time')
xlabel('Time in min')
ylabel('<\sigma_T>')
legend('LEFT','RIGHT');
print(figure(1),'std-all.eps','-depsc',['-F:',int2str(FONTSIZE)]);

figure(2)
plot(TEMPO,DATAL.MEAN_DX,'-o',TEMPO,DATAR.MEAN_DX,'-*')
title('<\sigma_X> in time: 0 - 0.333')
xlabel('Time in min')
ylabel('<\sigma_X>')
legend('LEFT','RIGHT');
print(figure(2),'std-bandx.eps','-depsc',['-F:',int2str(FONTSIZE)]);

figure(3)
plot(TEMPO,DATAL.MEAN_DY,'-o',TEMPO,DATAR.MEAN_DY,'-*')
title('<\sigma_Y> in time: 0.333 - 0.666')
xlabel('Time in min')
ylabel('<\sigma_Y>')
legend('LEFT','RIGHT');
print(figure(3),'std-bandy.eps','-depsc',['-F:',int2str(FONTSIZE)]);

figure(4)
plot(TEMPO,DATAL.MEAN_DZ,'-o',TEMPO,DATAR.MEAN_DZ,'-*')
title('<\sigma_Z> in time: 0.666 - 1.000')
xlabel('Time in min')
ylabel('<\sigma_Z>')
legend('LEFT','RIGHT');
print(figure(4),'std-bandz.eps','-depsc',['-F:',int2str(FONTSIZE)]);
