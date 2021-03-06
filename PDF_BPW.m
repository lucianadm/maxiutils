function PDF = PDF_BPW(x, D)

%x es el vector de entrada
%D es la dimensión de embedding

n = length(x);
FactorialBasis = fliplr(factorial(0:D-1));
PDF = zeros(1,factorial(D));

for i_vec = 1:n-D+1
    x_emb = x(i_vec:i_vec + D - 1);
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
    PDF(i_PDF) = PDF(i_PDF) + var(x_emb);
end

PDF = PDF/sum(PDF);