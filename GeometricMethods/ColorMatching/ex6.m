p = petunia();

cm = color_matching_1931();


XYZ = cm'*p;

X = XYZ(2);
Y = XYZ(3);
Z = XYZ(4);

total = X+Y+Z;
x = X/total;
y = Y/total;
z=Z/total;
