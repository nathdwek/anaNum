R1=B1-A*X1;
kMat=cond(A);
normA=norm(A);
KA1=kMat+((kMat**2)*norm(R1))/normA*norm(X1)
cosT1=norm(A*X1)/norm(B1)
KB1=kMat/cosT

R2=B2-A*X2;
KA2=kMat+((kMat**2)*norm(R2))/normA*norm(X2)
cosT2=norm(A*X2)/norm(B2)
KB2=kMat/cosT2
