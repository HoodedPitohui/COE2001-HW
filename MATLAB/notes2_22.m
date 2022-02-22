clc;
clear all;
close all;
f1 = 40;
f2 = 20;
f3 = 40;
f1Vec = [0, f1, 0];
f2Vec = [f2, 0, 0];
f3Vec = [0, 0, f3];

r1 = [0, 0, 3];
r2 = [0, 0, 0];
r3 = [5, 4, 0];

%Find point p in the x-y plane of the resultant
resultant = f1Vec + f2Vec + f3Vec;

mom1 = cross(r1, f1Vec);
mom2 = cross(r2, f2Vec);
mom3 = cross(r3, f3Vec);

momNet = mom1 + mom2 + mom3;
dotProd = dot(resultant, momNet); %since this is not 0, we know there is a wrench component
nR = resultant ./ norm(resultant);
mompara = dot(momNet, nR) .* nR; %parallel component
momPerp = momNet - mompara; %Perpendicular component


