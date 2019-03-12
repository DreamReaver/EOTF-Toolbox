function Tmatrix = Matrix(gamut, whitePoint)
% The program to compute 
% input 2*4
% [xr,xg,xb,wx;yr,yg,yb,wy]
% Here wx and wy is the cooridnates x,y of the reference white point
% [X;Y;Z] = Tmatrix*[R,G,B]
% Here Y=1 of reference white 
% Here R,G,B are tristimulus values of three primaries
% R,G,B in the specified gamut
% According to the chomaticity coordinates of R(xr,yr),G(xg,yg),B(xb,yb)
% and reference white point W(xw,yw)

if strcmp(gamut, 'DCI-P3')
    xr = 0.6800; yr = 0.3200;
    xg = 0.2650; yg = 0.6900;
    xb = 0.1500; yb = 0.0600;
elseif strcmp(gamut, 'Rec. 709')
    xr = 0.6400; yr = 0.3300;
    xg = 0.3000; yg = 0.6000;
    xb = 0.1500; yb = 0.0600;
elseif strcmp(gamut, 'Rec. 2020')
    xr = 0.7080; yr = 0.2920;
    xg = 0.1700; yg = 0.7970;
    xb = 0.1310; yb = 0.0460;
end

if strcmp(whitePoint, 'D65')
    xw = 0.3127; yw = 0.3290;
elseif strcmp(whitePoint, 'DCI')
    xw = 0.3140; yw = 0.3510;
end

PMatrix =[xr/yr,xg/yg,xb/yb;
          1, 1, 1;
          (1-xr-yr)/yr, (1-xg-yg)/yg,(1-xb-yb)/yb];
L = PMatrix\[xw/yw;1;(1-xw-yw)/yw];
Tmatrix = PMatrix*diag(L);