function C = PQ_EOTF(codeValue, bitDepth)
N = codeValue ./ (2 ^ bitDepth - 1);
m1 = 2610 / 4096 / 4;
m2 = 2523 / 4096 * 128;
c2 = 2413 / 4096 * 32;
c3 = 2392 / 4096 * 32;
c1 = c3 - c2 + 1;
numerator = max(N .^ (1 / m2) - c1, 0);
denominator = c2 - c3 .* N .^ (1 / m2);
L = (numerator ./ denominator) .^ (1 / m1);
C = 10000 .* L;