function C = Complexity(PDF, ResultType)

if strcmp(ResultType, 'Normalized')
    C = ShannonEntropy(PDF, 'Normalized')*Disequilibrium(PDF, 'Normalized');
elseif strcmp(ResultType, 'NonNormalized')
    C = ShannonEntropy(PDF, 'NonNormalized')*Disequilibrium(PDF, 'NonNormalized');
else
    error('ResultType must be Normalized or NonNormalized');
end