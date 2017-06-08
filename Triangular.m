function x = Triangular(n, r)

% n = longitud del vector x
% r = puntos por período

x = abs(mod(0:n-1,2*r)/r - 1);