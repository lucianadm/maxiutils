function PDF = PDF_BP(x, D, tau)

%x es el vector de entrada
%D es la dimensión de embedding
%tau es el retardo

n = length(x);
FactorialBasis = fliplr(factorial(0:D-1));
PDF = zeros(1,factorial(D));

for i_vec = 1:n-D*tau+1
    x_emb = x(i_vec:tau:i_vec + D*tau - 1);
    x_comp = zeros(1, D);
    for i_D = 1:D-1
        for i_comp = i_D+1:D
            if x_emb(i_D) > x_emb(i_comp)
                x_comp(i_D) = x_comp(i_D) + 1;
            end
%               [i_vec i_vec + i_D i_vec + i_comp]
        end
    end
    i_PDF = FactorialBasis * x_comp' + 1;
    PDF(i_PDF) = PDF(i_PDF) + 1;
end

PDF = PDF/n;