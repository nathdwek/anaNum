function [x]=ansolveLU(A,b)
[L,U]=lu(A);
y=anLu(L,b)
