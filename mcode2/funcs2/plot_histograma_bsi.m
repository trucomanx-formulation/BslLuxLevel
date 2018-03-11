function [HA1 HA2 HA3 LUX VAL ERR NSAMPLES]=plot_histograma_bsi(E,D,NUMERO,varargin)

if(nargin>3)
    [LUX VAL ERR NSAMPLES]=histograma_bsi(E,D,NUMERO,varargin);
else
    [LUX VAL ERR NSAMPLES]=histograma_bsi(E,D,NUMERO);
end

MIN=min(LUX);
MAX=max(LUX);


gcf();

subplot(3,1,1)
errorbar(LUX,VAL,ERR), grid 
xlabel('\mu_p')
xlim([MIN MAX])
ylim([0 10])
%ylim([0 10])
ylabel('\sigma_p')
HA1=gca();

subplot(3,1,2)
plot(LUX,100*ERR./VAL,'-o')
xlabel('\mu_p')
xlim([MIN MAX])
ylabel(' e_p (%)')
HA2=gca();

subplot(3,1,3)
plot(LUX,NSAMPLES)
xlim([MIN MAX])
xlabel('\mu_p')
ylabel('L_p')
HA3=gca();

end
