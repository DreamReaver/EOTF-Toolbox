function [X_Y_Z_Value, L] = RGB_to_XYZ(bitDepth, R_G_B_Value, M)
% Convert R'G'B' to X''Y''Z''
% DCI-P3 gamut / D65 white point / PQ EOTF
% Input:
% bitDepth - e.g. 8/10/12
% R_G_B_Value - e.g. [4095,4095,4095]

maxValue = 2 ^ bitDepth - 1;

R_G_B_Value = R_G_B_Value';

RGB = PQ_EOTF(R_G_B_Value, bitDepth);

XYZ = M * RGB;

L = XYZ(2,:)';

X_Y_Z_Value = PQ_OETF(XYZ, bitDepth);

X_Y_Z_Value = X_Y_Z_Value';