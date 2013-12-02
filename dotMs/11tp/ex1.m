addpath("../10tp")
clear all; close all;
lambda1=log(2)/19;
lambda2=log(2)/(6.7*3600);
lambda3=log(2)/(9.2*3600);
A=[lambda1 0 0; -lambda1 lambda2 0;0 -lambda2 lambda3];
f=@(t,y) -A*y;
y0=[1;0;0];
tDanger=40606;
nDanger=0.4275;
stableH=2/lambda1;
tMax=12*3600;
h=77*stableH;
t=0:h:tMax;
tic
yS=eulerR(f,y0,t,h);
toc
[ySMax indexMax]=max(yS(3,:));
erreurN=(nDanger-ySMax)/nDanger
erreurT=abs(tDanger-t(indexMax))/tDanger
rmpath("../10tp")

