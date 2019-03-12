function R_G_B_Value = XYZ_to_RGB(bitDepth, X_Y_Z_Value, M_)
% Convert X''Y''Z'' to R'G'B'
% DCI-P3 gamut / D65 white point / PQ EOTF
% Input:
% bitDepth - e.g. 8/10/12
% X_Y_Z_Value - e.g. [2747,2770,2808]

X_Y_Z_Value = X_Y_Z_Value';
XYZ = PQ_EOTF(X_Y_Z_Value, bitDepth);

RGB = M_ * XYZ;
R = RGB(1);
G = RGB(2);
B = RGB(3);

R_ = PQ_OETF(R, bitDepth);
G_ = PQ_OETF(G, bitDepth);
B_ = PQ_OETF(B, bitDepth);

R_G_B_Value = [R_,G_,B_];