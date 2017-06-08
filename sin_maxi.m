function s = sin_maxi(n,r)
% Genera una senoidal sin componentes espectrales residuales
% r es el período en número de muestras
% n es el largo del vector

% Genera el espectro de la senoidal
SenoidalLimpia=zeros(1,n);
SenoidalLimpia(1+floor(n/r))=n/2;
SenoidalLimpia(n+1-floor(n/r))=n/2;

%Antitransforma para encontrar la senoidal
s = ifft(SenoidalLimpia);