function x = LogisticMap(n, x0, r)

x = zeros(1,n);
x(1) = x0;

for i_x = 1:n-1
    x(i_x + 1) = r*x(i_x)*(1-x(i_x));
end