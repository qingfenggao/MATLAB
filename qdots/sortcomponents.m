function [sx, isx, fsx] = sortcomponents(x)
% [sx, isx, fx] = sortcomponents(x)
% Sorts the inut values x (column vectores - like res.w). 
% sx: sorted compontnts;
% isx: index of sorting - x(:,isx) are sorted...
% fsx: sorted objective function used for sorting
% fx = mean (x,2);
% ts = testimportance(reshape(dpixc, peval.nx*peval.ny, peval.nt), res.w, res.h);

fx= sum(x.^2,1);
[sx, isx] = sort(fx, 'descend');
fsx=fx(isx);
