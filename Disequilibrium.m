function Q = Disequilibrium(PDF, ResultType)

N = length(PDF);

Spe = log2(N);
Sp = ShannonEntropy(PDF, 'NonNormalized');
Sppe = ShannonEntropy((PDF + 1/N)/2, 'NonNormalized');

J = Sppe - Sp/2 - Spe/2;

if strcmp(ResultType, 'Normalized')
    invQ0 = log2(2*N) - .5*log2(N) - .5*(N+1)/N*log2(N+1);
    Q = J/invQ0;
elseif strcmp(ResultType, 'NonNormalized')
    Q = J;
else
    error('ResultType must be Normalized or NonNormalized');
end