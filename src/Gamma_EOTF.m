function C = Gamma_EOTF(codeValue, bitDepth, gamma, LRef)
maxValue = 2 ^ bitDepth - 1;
C = (codeValue ./ maxValue) .^ gamma .* LRef;