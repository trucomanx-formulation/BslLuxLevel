%
close all
pkg load bsltl
pkg load signal

%addpath(genpath('/media/fernando/FER8G-BTRFS/PROGRAMACION/NONGNU.ORG/BSLTL/BSLTL-PKG/bsltl-pkg/bsltl/inst/mfiles'))

%close all
addpath('funcs2');





%%

PASTA={'0min', '10min', '20min', '30min', '40min', '50min', '60min', '75min', '105min', '120min', '150min' };
TEMPO=[0 , 10, 20, 30, 40, 50, 60, 75,105,120,150];


NN=length(PASTA);
DIRECTORY= '/media/fernando/Hitachi/Resultados/Novos-dados-argentina/';
PATTERN  = '%d';
NUMIMGI=1;
NUMIMGF=400;

%POINT=[[50 10];[300 210]];
POINT=[[50 260];[300 460]];
%PRENAME='left-'
PRENAME='right-'

MEAN_D =zeros(1,NN);
MEAN_DX=zeros(1,NN);
MEAN_DY=zeros(1,NN);
MEAN_DZ=zeros(1,NN);

for II=1:NN
    LOCALDIR=fullfile(DIRECTORY,PASTA{II})
    [D E Dx Ex Dy Ey Dz Ez OUTPUT]=func_curva_lux(LOCALDIR,PATTERN,NUMIMGI,NUMIMGF,POINT);
    MEAN_D (II)=mean(mean(D (POINT(:,1)',POINT(:,2)')));
    MEAN_DX(II)=mean(mean(Dx(POINT(:,1)',POINT(:,2)')));
    MEAN_DY(II)=mean(mean(Dy(POINT(:,1)',POINT(:,2)')));
    MEAN_DZ(II)=mean(mean(Dz(POINT(:,1)',POINT(:,2)')));
end

close all
FONTSIZE=20;


mkdir([PRENAME 'prog_multiple'])


figure(1)
plot(TEMPO,MEAN_D)
title('STD in time')
xlabel('Time in min')
ylabel('STD')
print(figure(1),[[PRENAME 'prog_multiple'] '/meanall.eps'],'-depsc',['-F:',int2str(FONTSIZE)]);

figure(2)
plot(TEMPO,MEAN_DX,'-*',TEMPO,MEAN_DY,'-x',TEMPO,MEAN_DZ,'-o')
title('STD in time')
xlabel('Time in min')
ylabel('STD')
legend('0 - 0.333','0.333 - 0.666','0.666 - 1.000');
print(figure(2),[[PRENAME 'prog_multiple'] '/meanbands.eps'],'-depsc',['-F:',int2str(FONTSIZE)]);

DATA.TEMPO  =TEMPO;
DATA.MEAN_D =MEAN_D;
DATA.MEAN_DX=MEAN_DX;
DATA.MEAN_DY=MEAN_DY;
DATA.MEAN_DZ=MEAN_DZ;

save([PRENAME 'data.dat'],'DATA')


