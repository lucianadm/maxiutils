function x = Rampa(n, r)

inv_r = 1/r;
x = zeros(1,n);

for i_x = 2:n
    x(i_x) = x(i_x - 1) + inv_r;
end

x = mod(x,1);