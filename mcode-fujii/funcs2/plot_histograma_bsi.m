function [LUX VAL ERR NSAMPLES]=plot_histograma_bsi(E,D,NUMERO,POINT)

[LUX VAL ERR NSAMPLES]=histograma_bsi(E,D,NUMERO,POINT);


MIN=min(LUX);
MAX=max(LUX);


gcf();

subplot(3,1,1)
errorbar(LUX,VAL,ERR), grid 
xlabel('Intensity')
xlim([MIN MAX])
%ylim([0 10])
ylabel('Std intensity')

subplot(3,1,2)
plot(LUX,100*ERR./VAL,'-o')
xlabel('Intensity')
xlim([MIN MAX])
ylabel('Percentage Std intensity')

subplot(3,1,3)
plot(LUX,NSAMPLES)
xlim([MIN MAX])
xlabel('Mean intensity')
ylabel('Number of samples')


end
