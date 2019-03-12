a = [0:4095]';
b = zeros(4096,1);
red = [a,b,b];
green = [b,a,b];
blue = [b,b,a];

[XYZ, redL] = RGB_to_XYZ(12, red);
[XYZ, greenL] = RGB_to_XYZ(12, green);
[XYZ, blueL] = RGB_to_XYZ(12, blue);

t = [red,redL,green,greenL,blue,blueL];
xlswrite('form.csv',t);