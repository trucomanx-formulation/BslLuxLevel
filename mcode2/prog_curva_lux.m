%
%pkg load bsltl
close all
pkg load bsltl
%close all
addpath('funcs2');

pkg load signal

FONTSIZE=16;

DIRECTORY= '/media/fernando/Hitachi/DATA-OTROS/PAPEL/papel1';
PATTERN  = '1%d';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IMAGESDIR=DIRECTORY;
OUTPUT   =fullfile(IMAGESDIR,'output_prog_curva_lux');
rmdir(OUTPUT);
mkdir(OUTPUT);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%close all;
DATAT =datapack(IMAGESDIR,PATTERN,0,128,'bmp');
OFFSET=10;
DATAT =DATAT((OFFSET+1):(end-OFFSET),(OFFSET+1):(end-OFFSET),:);
[C D E]=stdcont(DATAT,'off');


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


figure('Position', [100 100 600 800]);
[HA1 HA2 HA3]=plot_histograma_bsi(E,D,200);
title(HA1,['Complete frequency band '])
print(gcf,fullfile(OUTPUT,'stdall_curve.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ORDER=32;
a=1/3.0;
b=2/3.0;
H0=fir1(ORDER,b,'low');
[DATAT0 DATATz]=firfilterbank(DATAT,H0,'MODE0');
H0=fir1(ORDER,a,'low');
[DATATx DATATy]=firfilterbank(DATAT0,H0,'MODE0');
clear DATAT0



[Cx Dx Ex]=stdcont(DATATx,'off');
figure(7);
imagesc(Dx);
colorbar();
title(['Std: filtered from 0.000 Fs/2 to 0.333 Fs/2 '])
colormap(jet);
print(figure(7),fullfile(OUTPUT,'stdx.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

[Cy Dy Ey]=stdcont(DATATy,'off');
figure(8);
imagesc(Dy);
colorbar();
title(['Std: filtered from 0.333 Fs/2 to 0.666 Fs/2 '])
colormap(jet);
print(figure(8),fullfile(OUTPUT,'stdy.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

[Cz Dz Ez]=stdcont(DATATz,'off');
figure(9);
imagesc(Dz);
colorbar();
title(['Std: filtered from 0.666 Fs/2 to 1.000 Fs/2 '])
colormap(jet);

print(figure(9),fullfile(OUTPUT,'stdz.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hx=figure('Position', [100 100 600 800]);
[HA1 HA2 HA3]=plot_histograma_bsi(E,Dx,200);
title(HA1,'Filtered from 0.000 to 0.333 Fs/2')
print(hx,fullfile(OUTPUT,'stdx_curve.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);


hy=figure('Position', [100 100 600 800]);
[HA1 HA2 HA3]=plot_histograma_bsi(E,Dy,200);
title(HA1,'Filtered from 0.333 Fs/2 to 0.666 Fs/2 ')
print(hy,fullfile(OUTPUT,'stdy_curve.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);


hz=figure('Position', [100 100 600 800]);
[HA1 HA2 HA3]=plot_histograma_bsi(E,Dz,200);
title(HA1,'Filtered from 0.666 Fs/2 to 1.000 Fs/2 ')
print(hz,fullfile(OUTPUT,'stdz_curve.eps'),'-depsc',['-F:',int2str(FONTSIZE)]);

