function [D E Dx Ex Dy Ey Dz Ez OUTPUT]=func_curva_lux(DIRECTORY,PATTERN,NUMIMGI,NUMIMGF,POIN2D)
    close all

    NSAMPLES = 100;
    if( 2 ~= size(POIN2D,1) )
        error('Os pontos devem ser 2 solamente')
    end


    POIN2D=round(POIN2D);
    POIN2D(:,1)=sort(POIN2D(:,1));
    POIN2D(:,2)=sort(POIN2D(:,2));

    AA=[POIN2D(1,1) POIN2D(1,2)];
    CC=[POIN2D(2,1) POIN2D(2,2)];
    BB=[POIN2D(1,1) POIN2D(2,2)];
    DD=[POIN2D(2,1) POIN2D(1,2)];

    POINT= [AA; BB; CC ;DD];

    IMAGESDIR=DIRECTORY;
    OUTPUT   =fullfile(IMAGESDIR,'output_func_curva_lux');
    rmdir(OUTPUT);
    mkdir(OUTPUT);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %close all;
    DATAT =datapack(IMAGESDIR,PATTERN,NUMIMGI,NUMIMGF,'bmp');
    [C D E]=stdcont(DATAT,'off');

    FONTSIZE=20;

    figure(1);
    imagesc(E);
    colorbar();
    colormap(jet);
    title('All band Mean')
    print(figure(1),fullfile(OUTPUT,'meanall.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

    figure(2);
    imagesc(D);
    colorbar();
    colormap(jet);
    title('All band Std')
    print(figure(2),fullfile(OUTPUT,'stdall.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure(1);
    NNN=4;
    for JJ=1:NNN
        hold('on');
        scatter (POINT(JJ,2), POINT(JJ,1),'k','LineWidth',6)
        hold('off');
    end
    hold('on');
    fill (POINT(:,2), POINT(:,1),'k','LineWidth',6)
    hold('off');
    print(figure(1),fullfile(OUTPUT,'meanall_points.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    figure(6);
    plot_histograma_bsi(E,D,NSAMPLES,POINT);
    disp('Histograma bsi done')

    print(figure(6),fullfile(OUTPUT,'stdall_curve.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

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

    [Cx Dx Ex]=stdcont(DATATx,'off');
    figure(7);
    imagesc(Dx);
    colorbar();
    title(['Std : filtered from 0.000 to 0.333 normalized frequency to fs/2 '])
    colormap(jet);
    print(figure(7),fullfile(OUTPUT,'stdx.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

    [Cy Dy Ey]=stdcont(DATATy,'off');
    figure(8);
    imagesc(Dy);
    colorbar();
    title(['Std : filtered from 0.333 to 0.666 normalized frequency to fs/2 '])
    colormap(jet);
    print(figure(8),fullfile(OUTPUT,'stdy.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

    [Cz Dz Ez]=stdcont(DATATz,'off');
    figure(9);
    imagesc(Dz);
    colorbar();
    title(['Std : filtered from 0.666 to 1.000 normalized frequency to fs/2 '])
    colormap(jet);

    print(figure(9),fullfile(OUTPUT,'stdz.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    figure(10);
    plot_histograma_bsi(E,Dx,NSAMPLES,POINT);
    print(figure(10),fullfile(OUTPUT,'stdx_curve.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);


    figure(11);
    plot_histograma_bsi(E,Dy,NSAMPLES,POINT);
    print(figure(11),fullfile(OUTPUT,'stdy_curve.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);


    figure(12);
    plot_histograma_bsi(E,Dz,NSAMPLES,POINT);
    print(figure(12),fullfile(OUTPUT,'stdz_curve.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);
end

