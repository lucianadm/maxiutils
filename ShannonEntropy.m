function H = ShannonEntropy(PDF, ResultType)

S = 0;
N = length(PDF);

for i_PDF = 1:N
    if (PDF(i_PDF) ~= 0)
        S = S - PDF(i_PDF)*log2(PDF(i_PDF));
    end
end

if strcmp(ResultType, 'Normalized')
    H = S/log2(N);
elseif strcmp(ResultType, 'NonNormalized')
    H = S;
else
    error('ResultType must be Normalized or NonNormalized');
end