y0=1;
h1=0.1;
t1=0:h1:10;
hRef=0.1/16;
tRef=0:hRef:10;
h2=0.05;
t2=0:h2:10;
h3=0.025;
t3=0:h3:10;
yRef=eulerP(@f1b,y0,tRef,hRef);
y1=eulerP(@f1b,y0,t1,h1);
y2=eulerP(@f1b,y0,t2,h2);
y3=eulerP(@f1b,y0,t3,h3);
plot(t1, yRef(1:16:end)-y1, t2, yRef(1:8:end)-y2, t3, yRef(1:4:end)-y3)
