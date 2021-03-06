function [F Fx Fy Fz ] = func_curva_lux(DIRECTORY,PATTERN,NUMIMGI,NUMIMGF,POIN2D)
    close all


    IMAGESDIR=DIRECTORY;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %close all;
    DATAT =datapack(IMAGESDIR,PATTERN,NUMIMGI,NUMIMGF,'bmp');
    F=fujii(DATAT,'off');


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    disp('Filtering DATAPACK ...')
    ORDER=32;
    a=1/3.0;
    b=2/3.0;
    H0=fir1(ORDER,b,'low');
    [DATAT0 DATATz]=firfilterbank(DATAT,H0,'MODE0');
    H0=fir1(ORDER,a,'low');
    [DATATx DATATy]=firfilterbank(DATAT0,H0,'MODE0');
    clear DATAT0
    disp('done')

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    Fx=fujii3(DATATx,DATAT,'off');


    Fy=fujii3(DATATy,DATAT,'off');


    Fz=fujii3(DATATz,DATAT,'off');


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

