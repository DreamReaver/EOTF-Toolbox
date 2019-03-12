function L = XYZ_to_Luminance(bitDepth, X_Y_Z_Value)
% Convert R'G'B' to Luminance
% DCI-P3 gamut / D65 white point / PQ EOTF
% Input:
% bitDepth - e.g. 8/10/12
% R_G_B_Value - e.g. [4095,4095,4095]

input = X_Y_Z_Value(:,2);

L = PQ_EOTF(input, bitDepth);