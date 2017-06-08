function PDF = PDF_Val(x, N)

%x es el vector de entrada
%N es la cantidad de bines

n = length(x);
PDF = hist(x, N);
PDF = PDF/n;