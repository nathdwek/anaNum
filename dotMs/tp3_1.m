%TP3 exercice 1
%Introduction de données
A1=ones(5)+4*diag(ones(5,1),0);
b1=9*ones(5,1);
A2=-1000*diag(ones(4,1),1)+diag(ones(5,1),0)-diag(ones(4,1),-1);
b2=-2*ones(5,1)+[1001; 1000*ones(3,1);0];
A3=A2;
A3(5,1)=-1000;
b3=[999;998*ones(4,1)];
x1=ones(5,1);
x2=-ones(5,1);
x3=-ones(5,1);

