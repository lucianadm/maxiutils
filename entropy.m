function S = entropy(PDF, ResultType)

S = 0;
N = length(PDF);

for i_PDF = 1:N
    if (PDF(i_PDF) ~= 0)
        S = S - PDF(i_PDF)*log2(PDF(i_PDF));
    end
end
if strcmp(ResultType, 'normalized')
    S = S/log2(N);
end