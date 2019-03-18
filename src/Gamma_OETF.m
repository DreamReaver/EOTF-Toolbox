function V = Gamma_OETF(L, bitDepth, gamma, LRef)
maxValue = 2 ^ bitDepth - 1;
V = round((L ./ LRef) .^ (1 / gamma) .* maxValue);