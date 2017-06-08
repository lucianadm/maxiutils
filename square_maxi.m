function s = square_maxi(x,r)

% x son los instantes de muestreo y r=fs/fo
t = mod(x,r);

% Assign 1 values to normalized t between (0,r/2), 0 elsewhere
s = (t < r/2);

%Tanto 1 como 0.5 tienen representación en números binarios, por lo que la
%cuenta es exacta. El 1 ahora cambió, suponemos que x y T son los valores
%que queremos introducir sin errores numéricos.

%El problema ahora lo tengo con mod(t,1), yo necesito valores de T=fs/fo, 
%por lo que t=fo/fs en general es un valor no representable por que
%necesita infinitas cifras decimales. ARREGLADO