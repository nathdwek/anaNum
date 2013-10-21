APRIM=A';
ATA=APRIM*A;
[L U P]=lu(ATA);
Z=P*(APRIM*B1);
Y=L\Z;
X1=U\Y;

Z=P*(APRIM*B2);
Y=L\Z;
X2=U\Y;

[Q R]=qr(A,0);

qrX1=R\(Q'*B1);
qrX2=R\(Q'*B2);






