close all; clear all;
y0=1;
h=0.1;
t=0:h:10;
yP=eulerP(@f1b,y0,t,h);
yR=eulerR(@f1b,y0,t, h);
plot(t, yP, t, yR)
hold off;
