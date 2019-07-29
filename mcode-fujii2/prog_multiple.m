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

POINT=[[50 10];[300 210]];
%POINT=[[50 260];[300 460]];
PRENAME='left-'
%PRENAME='right-'

MEAN_F =zeros(1,NN);
MEAN_FX=zeros(1,NN);
MEAN_FY=zeros(1,NN);
MEAN_FZ=zeros(1,NN);

for II=1:NN
    LOCALDIR=fullfile(DIRECTORY,PASTA{II})
    [F Fx Fy Fz]=func_curva_lux(LOCALDIR,PATTERN,NUMIMGI,NUMIMGF,POINT);
    MEAN_F (II)=mean(mean(F (POINT(:,1)',POINT(:,2)')));
    MEAN_FX(II)=mean(mean(Fx(POINT(:,1)',POINT(:,2)')));
    MEAN_FY(II)=mean(mean(Fy(POINT(:,1)',POINT(:,2)')));
    MEAN_FZ(II)=mean(mean(Fz(POINT(:,1)',POINT(:,2)')));
end

close all
FONTSIZE=20;


%mkdir([PRENAME 'prog_multiple'])

DATA.TEMPO  =TEMPO;
DATA.MEAN_F =MEAN_F;
DATA.MEAN_FX=MEAN_FX;
DATA.MEAN_FY=MEAN_FY;
DATA.MEAN_FZ=MEAN_FZ;

save([PRENAME 'data.dat'],'DATA')


